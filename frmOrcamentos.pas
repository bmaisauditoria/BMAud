unit frmOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, CheckLst, DBCtrls;

type
  TfrmOrcamento = class(TForm)
    dbPlanoC: TTable;
    dsPlanoC: TDataSource;
    dbOrcamento: TTable;
    dsOrcamento: TDataSource;
    dbPagar: TTable;
    dsPagar: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    dbOrcamentoCli: TTable;
    dsOrcamentoCli: TDataSource;
    dbOrcamentoCliOrcamento: TIntegerField;
    dbOrcamentoCliCliente: TIntegerField;
    dbOrcamentoCliApelido: TStringField;
    DBGrid2: TDBGrid;
    dbPlanoCCod1: TSmallintField;
    dbPlanoCCod2: TSmallintField;
    dbPlanoCCod3: TSmallintField;
    dbPlanoCDescricao: TStringField;
    dbFilial: TTable;
    dbFilialFilial: TIntegerField;
    dbFilialNome: TStringField;
    dsFilial: TDataSource;
    dbOrcamentoCod1: TSmallintField;
    dbOrcamentoCod2: TSmallintField;
    dbOrcamentoCod3: TSmallintField;
    dbOrcamentoTotal: TCurrencyField;
    dbOrcamentoPorcentagem: TFloatField;
    dbOrcamentoTotal1: TCurrencyField;
    dbOrcamentoPorcentagem1: TFloatField;
    dbOrcamentoTotal2: TCurrencyField;
    dbOrcamentoPorcentagem2: TFloatField;
    dbOrcamentoPorcentagem3: TFloatField;
    dbOrcamentoPlanoNome: TStringField;
    dbPlanoCBusca: TTable;
    dbPlanoCBuscaCod1: TSmallintField;
    dbPlanoCBuscaCod2: TSmallintField;
    dbPlanoCBuscaCod3: TSmallintField;
    dbPlanoCBuscaDescricao: TStringField;
    rdgNivel: TRadioGroup;
    rdgZero: TRadioGroup;
    Label1: TLabel;
    Panel2: TPanel;
    CheckListBox1: TCheckListBox;
    Label2: TLabel;
    pbOrc: TProgressBar;
    dbOrcamentoTotal3: TCurrencyField;
    dbOrcamentoCod4: TSmallintField;
    dbOrcamentoPorcentagemP: TFloatField;
    TabControl1: TTabControl;
    grdOrcamento: TDBGrid;
    dbOrcamentoAno: TIntegerField;
    dbOrcamentoMes: TIntegerField;
    Edit1: TEdit;
    UpDown1: TUpDown;
    Panel4: TPanel;
    Label3: TLabel;
    cmbFilial: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    grdProvisao: TDBGrid;
    Panel3: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    dbPagarFilial: TIntegerField;
    dbPagarLancamento: TAutoIncField;
    dbPagarCliente: TIntegerField;
    dbPagarClienteDeb: TIntegerField;
    dbPagarDataEmissao: TDateField;
    dbPagarDataVencto: TDateField;
    dbPagarPrazo: TIntegerField;
    dbPagarCod1: TSmallintField;
    dbPagarCod2: TSmallintField;
    dbPagarCod3: TSmallintField;
    dbPagarHistorico: TStringField;
    dbPagarDoc: TStringField;
    dbPagarValor: TCurrencyField;
    dbPagarTributo: TBooleanField;
    dbPagarBancoID: TIntegerField;
    dbPagarCheque: TStringField;
    dbPagarDataPagto: TDateField;
    dbPagarValorPago: TCurrencyField;
    dbPagarPago: TBooleanField;
    dbPagarSelecionado: TBooleanField;
    dbPagarStatus: TStringField;
    dbPagarPrevisao: TIntegerField;
    dbPagarMovBanco: TIntegerField;
    dbPagarNF: TIntegerField;
    dbPagarSeq: TStringField;
    dbPagarPorcentagem: TFloatField;
    dbPagarDataInclusao: TDateField;
    dbPagarUsuario: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbOrcamentoCalcFields(DataSet: TDataSet);
    procedure dbOrcamentoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure rdgNivelClick(Sender: TObject);
    procedure grdOrcamentoDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure grdProvisaoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento: TfrmOrcamento;

implementation

{$R *.dfm}

procedure TfrmOrcamento.BitBtn1Click(Sender: TObject);
var iFilial,i,iCliente,iOrc:integer;
var iSaldo, iTotal,iTotal1,iTotal2,iTotal3:currency;
var iPorc1,iPorc2,iPorc3:variant;
var iValor:currency;
var dataini, datafim:TDate;
function TotOrcamento:boolean;
begin
    dbOrcamento.Edit;
    dbOrcamentoTotal.value:=dbOrcamentoTotal.value+iValor;
    dbOrcamento.Post;

    dbOrcamento.Edit;
    case iOrc of
    1:dbOrcamentoTotal1.value:=dbOrcamentoTotal1.value+iValor;
    2:dbOrcamentoTotal2.value:=dbOrcamentoTotal2.value+iValor;
    3:dbOrcamentoTotal3.value:=dbOrcamentoTotal3.value+iValor;
    end;
    dbOrcamento.Post;
    result:=true;
end;

begin
    dataini:=EncodeDate(2004,1,1);
    datafim:=EncodeDate(2004,12,31);
    pbOrc.Min:=0;
    pbOrc.Position:=0;
    pbOrc.Max:=(dbOrcamento.RecordCount)+(dbPlanoC.RecordCount*2)+2;
    dbOrcamento.DisableControls;
    dbOrcamento.Filtered:=false;

    while not dbOrcamento.eof do
    begin
        pbOrc.Position:=pbOrc.Position+1;
        dbOrcamento.Delete;
    end;

    dbPlanoC.First;
    while not dbPlanoC.Eof do
    begin
        pbOrc.Position:=pbOrc.Position+1;
        for i:=0 to 2 do
        begin
            dbOrcamento.Insert;
            dbOrcamentoCod1.value:=dbPlanoCCod1.value;
            dbOrcamentoCod2.value:=dbPlanoCCod2.value;
            dbOrcamentoCod3.value:=dbPlanoCCod3.value;
            dbOrcamentoCod4.value:=i;
            dbOrcamento.Post;
        end;
        dbPlanoC.Next;
    end;

    dbOrcamento.Insert;
    dbOrcamentoCod1.value:=0;
    dbOrcamentoCod2.value:=0;
    dbOrcamentoCod3.value:=0;
    dbOrcamentoCod4.value:=0;
    dbOrcamento.Post;

    i:=0;
    dbFilial.First;
    while not dbFilial.eof do
    begin
        if checklistbox1.Checked[i] then
        begin
            iFilial:=dbFilialFilial.value;
            dbPagar.FindNearest([iFilial,dataini]);
            while (dbPagarFilial.value=iFilial) and
                  (dbPagarDataVencto.value<=datafim) and
                  (not dbPagar.eof) do
            begin
                if dbPagarCod1.value=1 then
                    iCliente:=dbPagarCliente.value
                else
                    iCliente:=dbPagarClienteDeb.value;

                if dbPagarCod1.value=1 then
                    iValor:=dbPagarValor.value
                else
                    iValor:=dbPagarValor.value*(-1);

                iOrc:=0;
                if dbOrcamentoCli.Locate('Cliente',iCliente,[]) then
                    iOrc:=dbOrcamentoCliOrcamento.value;

                dbOrcamento.FindKey([dbPagarCod1.value,
                                     dbPagarCod2.value,
                                     dbPagarCod3.value,0]);
                TotOrcamento;

                dbOrcamento.FindKey([dbPagarCod1.value,
                                     dbPagarCod2.value,
                                     dbPagarCod3.value,1]);
                TotOrcamento;

                dbOrcamento.FindKey([0,0,0,0]);
                TotOrcamento;

                dbOrcamento.FindKey([dbPagarCod1.value,0,0,0]);
                TotOrcamento;
                dbOrcamento.FindKey([dbPagarCod1.value,0,0,1]);
                TotOrcamento;

                dbOrcamento.FindKey([dbPagarCod1.value,dbPagarCod2.value,0,0]);
                TotOrcamento;
                dbOrcamento.FindKey([dbPagarCod1.value,dbPagarCod2.value,0,1]);
                TotOrcamento;

                dbPagar.Next;
            end;
        end;
        dbFilial.Next;
    end;

    dbOrcamento.FindKey([1,1,0,0]);
    dbOrcamento.Edit;
    dbOrcamentoPorcentagem.value:=100;
    if dbOrcamentoTotal.value<>0 then
    begin
        dbOrcamentoPorcentagem1.Value:=dbOrcamentoTotal1.value/dbOrcamentoTotal.value*100;
        dbOrcamentoPorcentagem2.Value:=dbOrcamentoTotal2.value/dbOrcamentoTotal.value*100;
        dbOrcamentoPorcentagem3.Value:=dbOrcamentoTotal3.value/dbOrcamentoTotal.value*100;
    end;

    iPorc1:=dbOrcamentoPorcentagem1.value;
    iPorc2:=dbOrcamentoPorcentagem2.value;
    iPorc3:=dbOrcamentoPorcentagem3.value;
    dbOrcamento.Post;

    dbOrcamento.FindKey([1,1,1,0]);
    while not dbOrcamento.eof do
    begin
        pbOrc.Position:=pbOrc.Position+1;
        iSaldo:=dbOrcamentoTotal.value-dbOrcamentoTotal1.value-
                                       dbOrcamentoTotal2.value-
                                       dbOrcamentoTotal3.value;

        if iSaldo<>0 then
        begin
            dbOrcamento.Edit; //total
            dbOrcamentoTotal1.value:=dbOrcamentoTotal1.value+
                                     (iSaldo*iPorc1/100);
            dbOrcamentoTotal2.value:=dbOrcamentoTotal2.value+
                                     (iSaldo*iPorc2/100);
            dbOrcamentoTotal3.value:=dbOrcamentoTotal3.value+
                                     (iSaldo*iPorc3/100);
            dbOrcamento.Post;
            dbOrcamento.Next;

            dbOrcamento.Edit; //rateio
            dbOrcamentoTotal.value:=dbOrcamentoTotal.value-iSaldo;
            dbOrcamento.Post;
            dbOrcamento.Next;

            dbOrcamento.Edit; //especifico
            dbOrcamentoTotal.value:=iSaldo;
            dbOrcamentoTotal1.value:=dbOrcamentoTotal1.value+
                                     (iSaldo*iPorc1/100);
            dbOrcamentoTotal2.value:=dbOrcamentoTotal2.value+
                                     (iSaldo*iPorc2/100);
            dbOrcamentoTotal3.value:=dbOrcamentoTotal3.value+
                                     (iSaldo*iPorc3/100);
            dbOrcamento.Post;
        end
        else
        begin
            dbOrcamento.Next;
            dbOrcamento.Next;
        end;
        dbOrcamento.Next;
    end;

    dbOrcamento.First;
    while not dbOrcamento.eof do
    begin
        if dbOrcamentoTotal.value<>0 then
        begin
            dbOrcamento.Edit;
            dbOrcamentoPorcentagem1.Value:=dbOrcamentoTotal1.value/dbOrcamentoTotal.value*100;
            dbOrcamentoPorcentagem2.Value:=dbOrcamentoTotal2.value/dbOrcamentoTotal.value*100;
            dbOrcamentoPorcentagem3.Value:=dbOrcamentoTotal3.value/dbOrcamentoTotal.value*100;
            dbOrcamento.Post;
        end;
        dbOrcamento.Next
    end;
    //acerto do Saldo
    rdgNivel.itemIndex:=0;
    dbOrcamento.Filtered:=true;
    dbOrcamento.FindKey([1,0,0,0]);
    iTotal1:=0;
    iTotal2:=0;
    iTotal3:=0;
    while not dbOrcamento.eof do
    begin
        iTotal1:=iTotal1+dbOrcamentoTotal1.value;
        iTotal2:=iTotal2+dbOrcamentoTotal2.value;
        iTotal3:=iTotal3+dbOrcamentoTotal3.value;
        dbOrcamento.Next;
    end;
    dbOrcamento.FindKey([0,0,0,0]);
    dbOrcamento.Edit;
    dbOrcamentoTotal1.value:=iTotal1;
    dbOrcamentoTotal2.value:=iTotal2;
    dbOrcamentoTotal3.value:=iTotal3;
    if dbOrcamentoTotal.value<>0 then
    begin
        dbOrcamentoPorcentagem1.Value:=dbOrcamentoTotal1.value/dbOrcamentoTotal.value*100;
        dbOrcamentoPorcentagem2.Value:=dbOrcamentoTotal2.value/dbOrcamentoTotal.value*100;
        dbOrcamentoPorcentagem3.Value:=dbOrcamentoTotal3.value/dbOrcamentoTotal.value*100;
    end;
    dbOrcamento.Post;
    rdgNivel.itemindex:=2;
    dbOrcamento.EnableControls;
    dbOrcamento.Filtered:=true;
    dbOrcamento.First;
    pbOrc.Position:=0;
end;

procedure TfrmOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbPlanoC.Close;
    dbPlanoCBusca.Close;
    dbFilial.Close;
    dbOrcamento.Close;
    dbOrcamentoCli.Close;
    dbPagar.Close;
end;

procedure TfrmOrcamento.FormShow(Sender: TObject);
var i:integer;
begin
    dbPlanoC.Open;
    dbPlanoCBusca.Open;
    dbFilial.Open;
    dbOrcamento.Open;
    dbOrcamentoCli.Open;
    dbPagar.Open;
    checklistbox1.Items.Clear;

    dbFilial.First;
    while not dbFilial.eof do
    begin
        checklistbox1.Items.Add(dbFilialNome.value);
        dbFilial.Next;
    end;

    dbOrcamentoCli.First;
    i:=3;
    while not dbOrcamentoCli.eof do
    begin
        if dbOrcamentoCliApelido.value='' then
            grdOrcamento.Columns[i+dbOrcamentoCliOrcamento.value].Title.Caption:='ND'
        else
            grdOrcamento.Columns[i+dbOrcamentoCliOrcamento.value].Title.Caption:=dbOrcamentoCliApelido.value;
        i:=i+1;
        dbOrcamentoCli.Next
    end;

end;

procedure TfrmOrcamento.dbOrcamentoCalcFields(DataSet: TDataSet);
var spc:string;
begin
    if (dbOrcamentoCod1.value=0) and
       (dbOrcamentoCod1.value=0) and
       (dbOrcamentoCod1.value=0) then
        dbOrcamentoPlanoNome.value:='SALDO'
    else
    begin
        if dbOrcamentoCod4.value=0 then
        begin
            dbPlanoCBusca.FindKey([dbOrcamentoCod1.value,
                                   dbOrcamentoCod2.value,
                                   dbOrcamentoCod3.value]);
            if dbOrcamentoCod3.value<>0 then
                spc:='          '
            else
                if dbOrcamentoCod2.value<>0 then
                    spc:='     '
                else
                    spc:='';
            dbOrcamentoPlanoNome.value:=spc+dbPlanoCBuscaDescricao.Value;
        end;
        if dbOrcamentoCod4.value=1 then
           dbOrcamentoPlanoNome.value:='                    ESPECIFICO';
        if dbOrcamentoCod4.value=2 then
           dbOrcamentoPlanoNome.value:='                    RATEIO';

    end;
end;

procedure TfrmOrcamento.dbOrcamentoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var ichk:boolean;
begin
    if rdgzero.itemindex=0 then
        ichk:=true
    else
        ichk:=(dbOrcamentoTotal.value<>0);

    case rdgNivel.ItemIndex of
    0: accept:=ichk and (dbOrcamentoCod2.value=0) and (dbOrcamentoCod3.value=0) and (dbOrcamentoCod4.value=0) ;
    1: accept:=ichk and (dbOrcamentoCod3.value=0) and (dbOrcamentoCod4.value=0);
    2: accept:=ichk and (dbOrcamentoCod4.value=0);
    3: accept:=ichk;
    end;
end;

procedure TfrmOrcamento.rdgNivelClick(Sender: TObject);
begin
    dbOrcamento.Refresh;
end;

procedure TfrmOrcamento.grdOrcamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    if (dbOrcamentoCod1.value=0) and
       (dbOrcamentoCod1.value=0) and
       (dbOrcamentoCod1.value=0) then
        grdOrcamento.Canvas.Brush.Color:=$0080FFFF
    else
    begin
        if dbOrcamentoCod1.value=1 then
            if dbOrcamentoCod3.value<>0 then
                grdOrcamento.Canvas.Brush.Color:=clWhite
            else
                if dbOrcamentoCod2.value<>0 then
                    grdOrcamento.Canvas.Brush.Color:=$00CCFFCC
                else
                    grdOrcamento.Canvas.Brush.Color:=$0080FF80
        else
            if dbOrcamentoCod3.value<>0 then
                grdOrcamento.Canvas.Brush.Color:=clWhite
            else
                if dbOrcamentoCod2.value<>0 then
                    grdOrcamento.Canvas.Brush.Color:=$00B7B7FF
                else
                    grdOrcamento.Canvas.Brush.Color:=$008080FF;

     end;
     grdOrcamento.Columns[2].Color:=$0080FFFF;
     grdOrcamento.DefaultDrawDataCell(Rect,grdOrcamento.Columns[DataCol].field,State);

end;

procedure TfrmOrcamento.grdProvisaoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     grdProvisao.Columns[4].Color:=$0080FFFF;
end;

end.
