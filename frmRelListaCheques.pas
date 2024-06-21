unit frmRelListaCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, MSAccess, DBAccess, MemDS, ExtCtrls, StdCtrls, DBCtrls, Buttons, ComCtrls;

type
  TfrmRelListaCheque = class(TForm)
    dbBanco: TMSTable;
    dsBanco: TDataSource;
    Panel1: TPanel;
    cmbBanco: TDBLookupComboBox;
    lblBanco: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cmdImp: TBitBtn;
    dbBancoBancoID: TAutoIncField;
    dbBancoBanco: TSmallintField;
    dbBancoConta: TStringField;
    dbBancoNome: TStringField;
    dbBancoSigla: TStringField;
    dtpIni: TDateTimePicker;
    dtpFim: TDateTimePicker;
    rdgOrdem: TRadioGroup;
    rdgTipo: TRadioGroup;
    rdgRelatorio: TRadioGroup;
    lblChqIni: TLabel;
    chqIni: TEdit;
    chqFim: TEdit;
    lblChqFim: TLabel;
    chkCheque: TCheckBox;
    rdgSaida: TRadioGroup;
    chkConta: TCheckBox;
    dbBancoAgencia: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cmdImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkChequeClick(Sender: TObject);
    procedure cmbBancoCloseUp(Sender: TObject);
    procedure rdgSaidaClick(Sender: TObject);
    procedure chkContaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelListaCheque: TfrmRelListaCheque;

implementation

uses dmRelatorios, frmPrincipal;

{$R *.dfm}

procedure TfrmRelListaCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbBanco.Close;
end;

procedure TfrmRelListaCheque.FormShow(Sender: TObject);
begin
    dbBanco.Open;
    cmbBanco.keyvalue:=dbBancoBancoID.value;
    chqIni.Text:=dbBancoSigla.value+'-00000000';
    chqFim.Text:=dbBancoSigla.value+'-99999999';
end;

procedure TfrmRelListaCheque.cmdImpClick(Sender: TObject);
var linha1,linha2,linha3,linha4,linha5:string;
begin
    case rdgOrdem.ItemIndex of
    0:linha1:=' order by MovBanco.BancoId,DataEntrada,Doc ';
    1:linha1:=' order by MovBanco.BancoId,Doc ';
    end;

    case rdgTipo.ItemIndex of
    0:linha2:='and MovBanco.Status<>'+QuotedStr('C')+' ';
    1:linha2:='and MovBanco.Status='+QuotedStr('C')+' ' ;
    2:linha2:='';
    end;

    linha3:='';
    linha5:='';

    if not chkConta.Checked then
        linha5:=' and MovBanco.BancoID=:iBanco ';

    if (not chkCheque.Checked) and
       (rdgSaida.ItemIndex=0) then
        linha3:=' and MovBanco.Doc>=:iChqIni and MovBanco.Doc<=:iChqFim  ';

    case rdgSaida.ItemIndex of
    0:linha4:='and (MovBanco.Tipo='+QuotedStr('X')+') ';
    1:linha4:='and (MovBanco.Tipo='+QuotedStr('P')+') ' ;
    2:linha4:='and ((MovBanco.Tipo='+QuotedStr('X')+') or (MovBanco.Tipo='+QuotedStr('P')+')) ';
    end;

    with dmRelatorio do
    begin
        relcheque.close;
        relcheque.sql.clear;
        relcheque.sql.text:='select * from MovBanco,CCorrente,Filiais  '+
                            'where MovBanco.BancoID=CCorrente.BancoID and '+
                            '      CCorrente.Filial=Filiais.Filial and '+
                            '      MovBanco.DataEntrada>=:iDataIni and '+
                            '      MovBanco.DataEntrada<=:iDataFim '
                            +linha2+linha3+linha4+linha5+linha1;
        if not chkConta.Checked then
            relcheque.ParamByName('iBanco').value:=cmbBanco.KeyValue;
        relcheque.ParamByName('iDataIni').asDate:=DtpIni.Date;
        relcheque.ParamByName('iDataFim').asDate:=DtpFim.Date;
        if not chkCheque.Checked then
        begin
            relcheque.ParamByName('iChqIni').asstring:=chqIni.Text;
            relcheque.ParamByName('iChqFim').asstring:=chqFim.Text;
        end;
        relCheque.Open;

        if relCheque.RecordCount=0 then
        begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
        end;
    end;
    frmMenu.RvFin.SetParam('DataIni',DateToStr(dtpIni.date));
    frmMenu.RvFin.SetParam('DataFim',DateToStr(dtpFim.date));

    case rdgSaida.ItemIndex of
    0:frmMenu.RvFin.SetParam('Titulo','Cheques Emitidos');
    1:frmMenu.RvFin.SetParam('Titulo','Aut. de Pagamentos (Doc/Ted) Emitidos');
    2:frmMenu.RvFin.SetParam('Titulo','Cheques e Aut. de Pagamentos (Doc/Ted) Emitidos');
    end;
    
    case rdgRelatorio.ItemIndex of
    0:frmMenu.rvFin.SelectReport('relChequeLista',true);
    1:frmMenu.rvFin.SelectReport('relChequeListaResumo',true);
    end;

    frmMenu.rvFin.Execute;
end;

procedure TfrmRelListaCheque.FormCreate(Sender: TObject);
begin
    dtpIni.date:=date;
    dtpFim.date:=date;
    chqIni.Text:=dbBancoSigla.value+'-00000000';
    chqFim.Text:=dbBancoSigla.value+'-99999999';
end;

procedure TfrmRelListaCheque.chkChequeClick(Sender: TObject);
begin
    if not chkCheque.checked then
    begin
        lblChqIni.Visible:=true;
        lblChqFim.Visible:=true;
        ChqIni.Visible:=true;
        ChqFim.Visible:=true;
    end
    else
    begin
        lblChqIni.Visible:=false;
        lblChqFim.Visible:=false;
        ChqIni.Visible:=false;
        ChqFim.Visible:=false;
    end;
end;

procedure TfrmRelListaCheque.cmbBancoCloseUp(Sender: TObject);
begin
    chqIni.Text:=dbBancoSigla.value+'-00000000';
    chqFim.Text:=dbBancoSigla.value+'-99999999';
end;

procedure TfrmRelListaCheque.rdgSaidaClick(Sender: TObject);
begin
    if rdgSaida.ItemIndex=0 then
        chkCheque.Visible:=true
    else
    begin
        chkCheque.Visible:=false;
        chkCheque.Checked:=true;
        chkChequeClick(sender);
    end;        
end;

procedure TfrmRelListaCheque.chkContaClick(Sender: TObject);
begin
    if chkConta.Checked then
    begin
        cmbBanco.Visible:=false;
        lblBanco.Visible:=false;
    end
    else
    begin
        cmbBanco.Visible:=true;
        lblBanco.Visible:=true;
    end;    
end;

end.
