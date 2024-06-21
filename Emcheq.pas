unit Emcheq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Sqltimst,Variants,
  StdCtrls, Mask, DBCtrls, DB, DBTables, Buttons, ExtCtrls, Grids, DBGrids,
  ComCtrls, ToolWin, Menus, DBDateTi, DBCGrids;

type
bcos = record
       bco,age:SmallInt;
       Conta:string[12];
       end;

  TCheques = class(TForm)
    Table1: TTable;
    Panel1: TPanel;
    DataSource1: TDataSource;
    Table2: TTable;
    Table2Agencia: TSmallintField;
    Table2Conta: TStringField;
    Table2Descrio: TStringField;
    Table2Saldo: TCurrencyField;
    DataSource2: TDataSource;
    Table1Lanamento: TAutoIncField;
    Table1Data: TDatetimeField;
    Table1Banco: TSmallintField;
    Table1Agencia: TSmallintField;
    Table1Conta: TStringField;
    Table1Tipo: TStringField;
    Table1Documento: TStringField;
    Table1Valor: TCurrencyField;
    Table1Histrico: TMemoField;
    Table1Favorecido: TStringField;
    DataSource3: TDataSource;
    StatusBar1: TStatusBar;
    Table1Status: TStringField;
    Table2Status: TStringField;
    Table3: TTable;
    Table3Lanamento: TAutoIncField;
    Table3Data: TDatetimeField;
    Table3Codn1: TSmallintField;
    Table3Codn2: TSmallintField;
    Table3Codn3: TSmallintField;
    Table3Histrico: TStringField;
    Table3DocRef: TStringField;
    Table3Valor: TCurrencyField;
    Table3Banco: TSmallintField;
    Table3Agencia: TSmallintField;
    Table3Conta: TStringField;
    Table3Cheque: TStringField;
    Table3DataPagto: TDatetimeField;
    Table3ValorPago: TCurrencyField;
    Table3Pago: TBooleanField;
    Table3Status: TStringField;
    Table3Periodico: TSmallintField;
    Table3Emissao: TDatetimeField;
    Table3CCustoRec: TSmallintField;
    Table3Controle: TIntegerField;
    ToolBar1: TToolBar;
    BitBtn1: TBitBtn;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton2: TSpeedButton;
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    TabelasdeRefernciaCruzada1: TMenuItem;
    Table2LimitedeCredito: TCurrencyField;
    Table2TitulosemCustdia: TCurrencyField;
    Table2PercentualUtilizvel: TFloatField;
    Table2Disponvel: TCurrencyField;
    Table3Filial: TSmallintField;
    Table2Filial: TSmallintField;
    Table2Codn1: TSmallintField;
    Table2Codn2: TSmallintField;
    Table2Codn3: TSmallintField;
    ToolButton1: TToolButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Table4: TTable;
    DataSource4: TDataSource;
    Table4Filial: TSmallintField;
    Table4Descrio: TStringField;
    Table5: TTable;
    DataSource5: TDataSource;
    Table6: TTable;
    DataSource6: TDataSource;
    Table6Lanamento: TAutoIncField;
    Table6Data: TDatetimeField;
    Table6Codn1: TSmallintField;
    Table6Codn2: TSmallintField;
    Table6Codn3: TSmallintField;
    Table6Histrico: TStringField;
    Table6DocRef: TStringField;
    Table6Valor: TCurrencyField;
    Table6Banco: TSmallintField;
    Table6Agencia: TSmallintField;
    Table6Conta: TStringField;
    Table6Cheque: TStringField;
    Table6DataPagto: TDatetimeField;
    Table6ValorPago: TCurrencyField;
    Table6Pago: TBooleanField;
    Table6Status: TStringField;
    Table6Periodico: TSmallintField;
    Table6Emissao: TDatetimeField;
    Table6CCustoRec: TSmallintField;
    Table6Controle: TIntegerField;
    Table6Filial: TSmallintField;
    Table1Filial: TSmallintField;
    Panel8: TPanel;
    Label10: TLabel;
    Panel9: TPanel;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    Panel10: TPanel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label9: TLabel;
    DBDateTimePicker1: TDBDateTimePicker;
    Table2Cheque: TIntegerField;
    Table2Sigla: TStringField;
    Table4NF: TIntegerField;
    ReclassificaodeCheque1: TMenuItem;
    CpiadeCheque1: TMenuItem;
    CHequesporData1: TMenuItem;
    ChequesporBanco1: TMenuItem;
    ContasaPagarporData1: TMenuItem;
    Table7: TTable;
    Table6itpln: TStringField;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    SpeedButton10: TSpeedButton;
    Label4: TLabel;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker7: TDateTimePicker;
    TabSheet2: TTabSheet;
    Label6: TLabel;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    Panel4: TPanel;
    SpeedButton11: TSpeedButton;
    Label16: TLabel;
    ComboBox1: TComboBox;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker8: TDateTimePicker;
    TabSheet3: TTabSheet;
    DBGrid6: TDBGrid;
    Panel5: TPanel;
    SpeedButton12: TSpeedButton;
    Edit1: TEdit;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    SpeedButton4: TSpeedButton;
    Label14: TLabel;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker5: TDateTimePicker;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    DBLookupComboBox2: TDBLookupComboBox;
    TabSheet8: TTabSheet;
    DBLookupComboBox4: TDBLookupComboBox;
    DBGrid8: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid7: TDBGrid;
    Panel7: TPanel;
    SpeedButton13: TSpeedButton;
    ComboBox2: TComboBox;
    TabSheet6: TTabSheet;
    Panel11: TPanel;
    SpeedButton14: TSpeedButton;
    Label15: TLabel;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    DateTimePicker4: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    DBGrid9: TDBGrid;
    Painel22: TPanel;
    Panel12: TPanel;
    Lab1: TLabel;
    Lab2: TLabel;
    Lab3: TLabel;
    DatePicker1: TDateTimePicker;
    DatePicker2: TDateTimePicker;
    DBCGrid1: TDBCtrlGrid;
    DBTxt1: TDBText;
    DBTxt2: TDBText;
    DBTxt3: TDBText;
    DBTxt4: TDBText;
    DBTxt5: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBEdt1: TDBEdit;
    DBCombo1: TDBComboBox;
    HeaderControl1: THeaderControl;
    Ds1: TDataSource;
    pag1: TTable;
    pag1Lanamento: TAutoIncField;
    pag1Data: TDatetimeField;
    pag1Codn1: TSmallintField;
    pag1Codn2: TSmallintField;
    pag1Codn3: TSmallintField;
    pag1DocRef: TStringField;
    pag1Valor: TCurrencyField;
    pag1Banco: TSmallintField;
    pag1Agencia: TSmallintField;
    pag1Conta: TStringField;
    pag1Cheque: TStringField;
    pag1DataPagto: TDatetimeField;
    pag1ValorPago: TCurrencyField;
    pag1Pago: TBooleanField;
    pag1Histrico: TStringField;
    pag1Status: TStringField;
    pag1Periodico: TSmallintField;
    pag1Emissao: TDatetimeField;
    pag1CCustoRec: TSmallintField;
    pag1Controle: TIntegerField;
    pag1Filial: TSmallintField;
    pag1Fornecedor: TStringField;
    pag1NF: TIntegerField;
    pag1Prazo: TSmallintField;
    pag1Percentual: TSmallintField;
    pag2: TTable;
    pag2Lanamento: TAutoIncField;
    pag2Data: TDatetimeField;
    pag2Codn1: TSmallintField;
    pag2Codn2: TSmallintField;
    pag2Codn3: TSmallintField;
    pag2Histrico: TStringField;
    pag2DocRef: TStringField;
    pag2Valor: TCurrencyField;
    pag2Banco: TSmallintField;
    pag2Agencia: TSmallintField;
    pag2Conta: TStringField;
    pag2Cheque: TStringField;
    pag2DataPagto: TDatetimeField;
    pag2ValorPago: TCurrencyField;
    pag2Pago: TBooleanField;
    pag2Status: TStringField;
    pag2Periodico: TSmallintField;
    pag2Emissao: TDatetimeField;
    pag2CCustoRec: TSmallintField;
    pag2Controle: TIntegerField;
    pag2Filial: TSmallintField;
    pag2NF: TIntegerField;
    pag2Prazo: TSmallintField;
    pag2Percentual: TSmallintField;
    pag3: TTable;
    pag1itpln: TStringField;
    DBText5: TDBText;
    Table2Emprestimos: TCurrencyField;
    Table2ContaGarantida: TCurrencyField;
    Table2SomarcomFilial: TSmallintField;
    Table5Cliente: TStringField;
    Table5RazoSocial: TStringField;
    Table5Cgc: TStringField;
    Table5InscEstadual: TStringField;
    Table5Lista: TIntegerField;
    Table5Status: TStringField;
    Table5Email: TStringField;
    Table5Filial: TSmallintField;
    Table5Atividade: TStringField;
    Table5Numero: TAutoIncField;
    Table5NossoCliente: TBooleanField;
    Table5NossoFornecedor: TBooleanField;
    Table5Pontualidade: TIntegerField;
    Table5NumerodeCompras: TIntegerField;
    pag3NossoFornecedor: TBooleanField;
    pag3Cliente: TStringField;
    pag3Cgc: TStringField;
    Table2DatadeFechamento: TDatetimeField;
    CheckBox1: TCheckBox;
    Table8: TTable;
    pag1cc: TStringField;
    prevpg1: TMenuItem;
    Table2Cpmf: TCurrencyField;
    DBText6: TDBText;
    Table2Banco: TSmallintField;
    Table3Cliente: TStringField;
    Table6Cliente: TStringField;
    pag2Cliente: TStringField;
    pag1Cliente: TStringField;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    DBComboBox1: TDBComboBox;
    Label5: TLabel;
    DBText1: TDBText;
    Table1Account: TStringField;
    pag1Aprovadopor: TStringField;
    pag1DatadaAprovao: TDateTimeField;
    procedure DBEdit7Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Table1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Table2FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure Table3BeforePost(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure Table2CalcFields(DataSet: TDataSet);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Table6FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure DateTimePicker3Change(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Table1BeforePost(DataSet: TDataSet);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DateTimePicker4Change(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
    procedure DateTimePicker2Exit(Sender: TObject);
    procedure DateTimePicker3Exit(Sender: TObject);
    procedure DateTimePicker1Exit(Sender: TObject);
    procedure DateTimePicker4Exit(Sender: TObject);
    procedure DateTimePicker6Exit(Sender: TObject);
    procedure DateTimePicker5Exit(Sender: TObject);
    procedure DateTimePicker8Exit(Sender: TObject);
    procedure DateTimePicker7Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReclassificaodeCheque1Click(Sender: TObject);
    procedure CpiadeCheque1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure DatePicker1Change(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure pag1BeforePost(DataSet: TDataSet);
    procedure pag1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure pag1PeriodicoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure pag1PeriodicoSetText(Sender: TField; const Text: String);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBCGrid1Exit(Sender: TObject);
    procedure DBEdt1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToolBar1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBEdt1Enter(Sender: TObject);
    procedure DBEdt1Exit(Sender: TObject);
    procedure prevpg1Click(Sender: TObject);
    procedure Table1AfterInsert(DataSet: TDataSet);
    procedure pag3FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Table5FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure DateTimePicker2CloseUp(Sender: TObject);
    procedure Table1CalcFields(DataSet: TDataSet);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure Table2AfterPost(DataSet: TDataSet);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure Table3AfterPost(DataSet: TDataSet);
    procedure pag1AfterPost(DataSet: TDataSet);
  private
  hoje:tdatetime;
  cpmf:double;
  valida:string;
  altera:integer;
  conta:string;
  banco:array[0..999] of bcos;
  vx,vab,vpag:Currency;
  procedure calc3;
  function strtocurrency(a:string):Currency;
  function tiracento(a:string):string;
    { Private declarations }
  public
  de,ate:Tdatetime;
  procedure calc;
  procedure calcprev;
  procedure calc2;

    { Public declarations }
  end;
const
cheq = 'CHRON32.DLL';

Function PLUS_Abre(IdPorta:Byte):byte;far;external CHEQ;
Function PLUS_Ejeta(IdPorta:Byte):byte;far;external CHEQ;
Function PLUS_Fecha(IdPorta:Byte):byte;far;external CHEQ;
Function PLUS_ImprimeCheque (IdPorta:Byte):byte;far;external CHEQ;
function  PLUS_CampoCheque (IdPorta,Campo:Byte;LPSTR:String ):Byte;far;external CHEQ;
{IdPorta: 	Número de Identificação da Porta (de 1 a 9) previamente aberta.Campo:
Identificação do Campo a ser especificado. Pode assumir um dos seguintes valores:
0	Especifica o Favorecido.
1	Especifica a Localidade
2	Especifica o Banco
(*)3	Especifica o Valor do Cheque
(*). As casas decimais devem ser separadas por ponto.
4	Especifica a Data no formato: DD/MM/AA
5	Especifica a Moeda no formato: Moeda, Moedas
6	Especifica o campo extra no formato:
        Título,Valor
        lpszValor:	Contém o valor a ser especificado para o campo.}
var
  Cheques: TCheques;

implementation

uses relcheq, vidt, Clch,guto, Relpag, uchqpag, rlpgab,
  recl, UMain, prvq;



{$R *.DFM}

function Tcheques.tiracento(a:string):string;
var i:Integer;
begin
a:=ansiuppercase(a);
for i:=1 to length(a) do
begin
case a[i] of
'Â','Á','À','Ã':a[i]:='A';
'É','Ê','È':a[i]:='E';
'Í','Ì':a[i]:='I';
'Ó','Ô','Õ','Ò':a[i]:='O';
'Ú','Ü','Ù':a[i]:='U';
end;
END;
result:=a;
end;
procedure TCheques.calc;
var totaltit:Double;
    tt:integer;
begin
totaltit:=0;
table1.disablecontrols;
tt:=0;
table1.first;
while not table1.eof do
begin
tt:=tt+1;
Totaltit:=totaltit+table1Valor.asfloat;
table1.next;
end;
table1.first;
table1.enablecontrols;
statusbar1.panels[1].text:=inttostr(tt);
statusbar1.panels[3].text:=format('%m',[totaltit]);
end;

procedure TCheques.calc2;
var totaltit:Double;
    tt:integer;
begin
totaltit:=0;
tt:=0;
table6.disablecontrols;
table6.first;
while not table6.eof do
begin
tt:=tt+1;
Totaltit:=totaltit+table6Valor.asfloat;
table6.next;
end;
table6.first;
table6.enablecontrols;
statusbar1.panels[1].text:=inttostr(tt);
statusbar1.panels[3].text:=format('%m',[totaltit]);
end;


procedure TCheques.calcprev;
var totaltit:Double;
begin
totaltit:=0;
pag1.disablecontrols;
pag1.first;
while not pag1.eof do
begin
Totaltit:=totaltit+pag1Valor.asfloat;
pag1.next;
end;
pag1.first;
pag1.enablecontrols;
statusbar1.panels[5].text:=format('%m',[totaltit]);
end;

procedure TCheques.FormCreate(Sender: TObject);
var i:integer;
begin
hoje:=trunc(date);
cpmf:=0.30/100;
datetimepicker1.date:=hoje;
datetimepicker2.date:=hoje;
datetimepicker3.date:=hoje;
datetimepicker4.date:=hoje;
datetimepicker5.date:=hoje;
datetimepicker6.date:=hoje;
datetimepicker7.date:=hoje;
datetimepicker8.date:=hoje;
de:=hoje;
ate:=hoje;
if userdata.customizado.report
then mainform.Listsub(mainmenu1,'Rcpg*',userdata.rep)
else mainmenu1.items[1].visible:=false;
speedbutton2.enabled:=userdata.customizado.report;
speedbutton4.enabled:=userdata.customizado.report;
speedbutton10.enabled:=userdata.customizado.report;
speedbutton11.enabled:=userdata.customizado.report;
speedbutton12.enabled:=userdata.customizado.report;
speedbutton13.enabled:=userdata.customizado.report;
speedbutton14.enabled:=userdata.customizado.report;
try
table4.open;
except
end;
dblookupcombobox1.keyvalue:=table4Descrio.asstring;
datepicker1.date:=hoje;
datepicker2.date:=hoje;
pag1.filtered:=false;
pag1.open;
pag2.filtered:=false;
pag2.open;
table2.open;
table1.filtered:=true;
table1.open;
table3.open;
table5.open;
table6.filtered:=true;
table6.open;
dblookupcombobox2.keyvalue:=table5Cliente.asstring;

table6.setrange([table5cliente.asstring,hoje],[table5cliente.asstring,hoje]);
i:=0;
table2.filtered:=false;
table2.disablecontrols;
dbcombobox1.items.clear;
while not table2.eof do
begin
dbcombobox1.items.add(table2conta.asstring);
banco[i].bco:=table2banco.asinteger;
banco[i].age:=table2agencia.asinteger;
banco[i].conta:=table2Conta.asstring;
combobox1.items.add(table2Conta.asstring+' '+table2Descrio.asstring);
inc(i);
table2.next;
end;
table2.filtered:=true;
table2.enablecontrols;
conta:=table2Conta.asstring;
Combobox1.text:=combobox1.items[0];
combobox1.itemindex:=0;
COMBOBOX2.items.ASSIGN(COMBOBOX1.items);
combobox2.itemindex:=0;
table1.setrange([hoje,0,0,''],[hoje,9999,9999,'zzzzz']);
pagecontrol1.activepage:=TabSheet1;
end;

procedure TCheques.FormDestroy(Sender: TObject);
begin
table2.close;
table3.close;
table1.close;
table4.close;
table5.close;
table6.close;
pag1.close;
pag2.close;
end;





procedure TCheques.DBEdit7Click(Sender: TObject);
begin
if table1.state=dsinsert then dbcombobox1.enabled:=true;
end;

procedure TCheques.BitBtn1Click(Sender: TObject);
var dt:Tdatetime;
    prv,rlz:boolean;
    d,a,m,q,v,i,year,month,day:word;
    gp:Tbookmark;
    txt:tstringlist;
begin
if table1data.asdatetime<=table2datadefechamento.asdatetime then
showmessage('Impossível efetuar lançamento nesta data.') else
begin
calc3;
if vpag>table1valor.ascurrency then
showmessage('Valor do cheque é insuficiente para cobrir as despesas assinaladas') else
begin
if table1Valor.ascurrency>0 then
begin
if table1Valor.ascurrency>vpag
                then begin
		     if clasch=nil then application.createform(Tclasch,clasch);
		     clasch.tag:=0;
                     clasch.vl:=table1Valor.ascurrency-vpag;
		     clasch.showmodal;
		     prv:=false;
                     end else clasch.tag:=99;
if clasch.tag=99 then
begin
prv:=true;
DBLOOKUPCOMBOBOX1.ENABLED:=TRUE;
PAGECONTROL1.ENABLED:=TRUE;
bitbtn1.setfocus;
v:=0;
table2.findkey([table1Banco.asinteger,table1Agencia.asinteger,table1Conta.asstring]);
if (table2Saldo.asfloat-table1Valor.asfloat<0) and (table2Saldo.asfloat>=0) then
begin
showmessage('O saldo desta conta passará a ser negativo');
end;
table2.edit;
table2Saldo.ascurrency:=table2Saldo.ascurrency-table1Valor.ascurrency;
table2cpmf.ascurrency:=table2cpmf.ascurrency+round(table1Valor.ascurrency*cpmf*100)/100;
IF copy(TABLE1documento.asstring, 1, 3)=table2Sigla.asstring then table2cheque.asInteger:=strtoint(copy(table1DOCUMENTO.asstring, pos('-', table1DOCUMENTO.asstring)+1, 255))+1;
table2.post;
table1Tipo.asstring:='X';
if checkbox1.checked then table1Status.asstring:='a';
pag1.disablecontrols;
pag1.filtered:=false;
pag1.indexfieldnames:='Banco;Agencia;Conta;Cheque';
pag1.setrange([table1banco.asinteger,table1agencia.asinteger,table1conta.asstring,table1Documento.asstring],
[table1banco.asinteger,table1agencia.asinteger,table1conta.asstring,table1Documento.asstring]);
{txt:=tstringlist.Create;
txt.Assign(table1histrico);
table1histrico.Clear;}
pag1.refresh;
table1.post;
table1.refresh;
{table1.edit;
table1histrico.Assign(txt);
table1.post;
txt.Free;   }
pag1.first;
while not pag1.eof do
begin
if pag1pago.asboolean and ((pag1Controle.isnull) or (pag1controle.asInteger=0))
                        then begin
			     if pag1Periodico.asinteger>0 then
			     begin
			     q:=pag1periodico.asinteger;
			     dt:=pag1Data.asdatetime;
			     pag2.insert;
			     for i:=1 to pag1.fieldcount-1 do
			     begin
			     if pag1.fields[i].fieldkind=fkdata
                             then pag2.fieldbyname(pag1.fields[i].fieldname).value:=pag1.fields[i].value;
			     end;
			     pag2Banco.asinteger:=0;
			     pag2Conta.asstring:='';
			     pag2Agencia.asinteger:=0;
                             pag2datapagto.clear;
			     pag2cheque.asstring:='';
			     pag2Emissao.asdatetime:=hoje;
                             pag2filial.asinteger:=table4filial.asinteger;
			     pag2Pago.asboolean:=false;
			     if pag2Valor.asfloat=0 then pag2Valor.asfloat:=pag1ValorPago.asfloat;
			     pag2ValorPago.asfloat:=0;
			     decodedate(pag2data.asdatetime,year,month,day);

			case q of
			   13:begin
			       v:=7;
			       pag2Data.asfloat:=dt+v;
			       end;
		  1,2,3,4,6,12:begin
			       v:=30*q;
			       pag2Data.asdatetime:=dt+v;
			       decodedate(pag2Data.asdatetime,a,m,d);
			       end;
			     end;

			     pag2.post;
			     end;
                              pag1.edit;
			      pag1filial.asinteger:=table2filial.asinteger;
			      pag1DataPagto.asdatetime:=table1Data.asdatetime;
			      pag1Controle.asinteger:=table1Lanamento.asinteger;
			      pag1.post;
			      end;
pag1.next;
end;
pag1.cancelrange;
pag1.indexfieldnames:='Data;Cliente';
pag1.filtered:=true;
pag1.enablecontrols;
pagecontrol1.visible:=true;
painel22.visible:=false;
PageControl1Change(Sender);
speedbutton3.enabled:=true;
speedbutton5.enabled:=true;
speedbutton3.down:=false;
dbedit3.enabled:=false;
dbedit4.enabled:=false;
dbedit5.enabled:=false;
dbcombobox1.enabled:=false;
dbdatetimepicker1.enabled:=false;
dbmemo1.enabled:=false;
conta:=table1Conta.asstring;
end else pag1.cancel;
end;
end;
end;
end;

procedure TCheques.FormShow(Sender: TObject);
begin
if clasch=nil then application.createform(Tclasch,clasch);
pag1.disablecontrols;
pag1.setrange([datetimepicker1.date],[datetimepicker2.date]);
pag1.filtered:=true;
pag2.filtered:=true;
calc3;
pag1.enablecontrols;
lab2.caption:=format('%m',[vab]);
lab3.caption:=format('%m',[vpag]);

end;

procedure TCheques.SpeedButton5Click(Sender: TObject);
var i:integer;
begin
if table1.state=dsinsert then
begin
table3.MasterSource:=datasource1;
table3.refresh;
table3.first;
while not table3.eof do
begin
if table3Valor.asfloat<>0 then
begin
table3.edit;
table3Pago.asboolean:=false;
table3Cheque.clear;
altera:=1;
table3Controle.clear;
table3ValorPago.clear;
table3Banco.clear;
table3Agencia.clear;
table3Conta.clear;
table3Datapagto.clear;
table3.post;
table3.Next;
end else table3.Delete;
end;
table3.MasterSource:=nil;
table3.refresh;
dbmemo1.lines.clear;
table1.cancel;
speedbutton3.enabled:=true;
speedbutton3.down:=false;
calcprev;
calc;
dbedit3.enabled:=false;
dbedit4.enabled:=false;
dbedit5.enabled:=false;
dbcombobox1.enabled:=false;
dbdatetimepicker1.enabled:=false;
dbmemo1.enabled:=false;
DBLOOKUPCOMBOBOX1.ENABLED:=true;
pagecontrol1.visible:=true;
painel22.visible:=false;
PAGECONTROL1.ENABLED:=TRUE;
end else
begin
i:=application.messagebox('Você tem certeza de que deseja excluir/cancelar este Cheque?',
   'Confirmação de Exclusão',mb_YesNo);
if i=idyes then
begin
DBLOOKUPCOMBOBOX1.ENABLED:=true;
pagecontrol1.visible:=true;
painel22.visible:=false;
PAGECONTROL1.ENABLED:=TRUE;
if ansiuppercase(table1Status.asstring)<>'C' then
begin
table3.MasterSource:=datasource1;
table3.refresh;
table3.first;
while not table3.eof do
begin
if table3Valor.asfloat<>0 then
begin
table3.edit;
table3Pago.asboolean:=false;
altera:=1;
table3Controle.clear;
table3Cheque.clear;
table3ValorPago.clear;
table3Banco.clear;
table3Agencia.clear;
table3Conta.clear;
table3Datapagto.clear;
table3.post;
table3.next;
end else table3.delete;
end;
table3.MasterSource:=nil;
table3.refresh;
table1.Refresh;
table1.edit;
table2.findkey([table1Banco.asinteger,table1Agencia.asinteger,table1Conta.asstring]);

table2.edit;
table2Saldo.asfloat:=table2Saldo.asfloat+table1Valor.asfloat;
table2cpmf.ascurrency:=table2cpmf.ascurrency-round(table1Valor.ascurrency*cpmf*100)/100;
table2.post;
if table1Status.asstring='A' then table1Status.asstring:='C'
else table1Status.asstring:='c';
dbmemo1.lines.add('****** C A N C E L A D O *****');
table1.post;
end;
speedbutton3.enabled:=true;
speedbutton3.down:=false;
calcprev;
calc;
dbedit3.enabled:=false;
dbedit4.enabled:=false;
dbedit5.enabled:=false;
dbcombobox1.enabled:=false;
dbdatetimepicker1.enabled:=false;
dbmemo1.enabled:=false;
end;
end;
end;

procedure TCheques.Table1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var chk:boolean;
begin
chk:=((cxlog.opcx.itemindex=2) or
     ((ansiuppercase(table1Status.asstring)=table1Status.asstring) and (cxlog.opcx.itemindex<=0)) or
     ((ansiuppercase(table1Status.asstring)<>table1Status.asstring) and (cxlog.opcx.itemindex=1)))
      and (table4Filial.asinteger=table1Filial.asinteger);

accept:=(table1Tipo.asstring='X') and chk 
end;

procedure TCheques.PageControl1Change(Sender: TObject);
begin

case Pagecontrol1.activepage.pageindex of
0:begin
  TABLE1.FILTER:='status='+#39+'A'+#39;
  table1.indexfieldnames:='Data;Banco;Agencia;Conta';
  table1.setrange([datetimepicker2.date],[datetimepicker7.date]);
  calc;
  end;
1:Begin
  TABLE1.FILTER:='status='+#39+'A'+#39;
  table6.cancelrange;
  table1.indexfieldnames:='Banco;Agencia;Conta;Data';
  with banco[combobox1.itemindex] do table1.setrange([bco,age,conta,datetimepicker3.date],[bco,age,conta,datetimepicker8.date]);
  calc;
  end;
2:Begin
  TABLE1.FILTER:='status='+#39+'A'+#39;
  table6.cancelrange;
  table1.indexfieldnames:='Tipo;Favorecido';
  table1.cancelrange;
  calc;
  end;
3:Begin
  table6.cancelrange;
  table6.indexfieldnames:='Cliente;Data';
  table6.SetRange([table5cliente.asstring,datetimepicker1.date],[table5cliente.asstring,datetimepicker5.date]);
  calc2;
  end;

4:Begin
  TABLE1.FILTER:='status='+#39+'C'+#39;
  table6.cancelrange;
  table1.indexfieldnames:='Banco;Agencia;Conta';
  with banco[combobox2.itemindex] do table1.setrange([bco,age,conta],[bco,age,conta]);
  calc;
  end;
5:begin
  table6.cancelrange;
  table6.indexfieldnames:='Data;Cliente';
  table6.SetRange([datetimepicker4.date],[datetimepicker6.date]);
  checkbox4.checked:=false;
  checkbox5.checked:=false;
  calc2;
  end;
end;
end;

procedure TCheques.ComboBox1Change(Sender: TObject);
begin
with banco[combobox1.itemindex] do table1.setrange([bco,age,conta,DATETIMEPICKER3.DATE],[bco,age,conta,DATETIMEPICKER8.DATE]);
calc;
end;

procedure TCheques.Edit1Change(Sender: TObject);
begin
table1.setrange(['X',edit1.text],['X',edit1.text+'zzz']);
CALC;
end;

procedure TCheques.ComboBox2Change(Sender: TObject);
begin
with banco[combobox2.itemindex] do table1.setrange([bco,age,conta],[bco,age,conta]);
calc;
end;

procedure TCheques.Table2FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
accept:=((cxlog.opcx.itemindex=2) or
	((dataset['Status']='A') and (cxlog.opcx.itemindex<=0)) or
        ((dataset['Status']='a') and (cxlog.opcx.itemindex=1))) and (table2Filial.asinteger=table4Filial.asinteger);


end;

procedure TCheques.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if (key='.') and (key<>decimalseparator) then key:=decimalseparator;
end;

procedure TCheques.Table3BeforePost(DataSet: TDataSet);
begin
if altera=1 then else table3Controle.asinteger:=table1Lanamento.asinteger;
altera:=0;
end;

procedure TCheques.SpeedButton3Click(Sender: TObject);
begin
altera:=0;
table1.indexfieldnames:='Data;Banco;Agencia;Conta';
table1.setrange([datetimepicker2.date],[datetimepicker7.date+1000]);
TABLE1.FILTER:='status='+#39+'A'+#39;
pagecontrol1.activepage:=tabsheet1;
PAGECONTROL1.ENABLED:=FALSE;
DBLOOKUPCOMBOBOX1.ENABLED:=FALSE;
pagecontrol1.visible:=false;
painel22.visible:=true;
try
pag1.DisableControls;
pag1.setrange([datepicker1.date],[datepicker2.date]);
calc3;
lab2.caption:=format('%m',[vab]);
lab3.caption:=format('%m',[vpag]);
dbedit3.enabled:=true;
dbedit4.enabled:=true;
dbedit5.enabled:=true;
dbdatetimepicker1.enabled:=true;
dbmemo1.enabled:=true;
finally
pag1.enableControls;
end;
table1.insert;
dbcombobox1.enabled:=true;
table1Conta.asstring:=conta;
speedbutton3.enabled:=false;
speedbutton5.enabled:=true;
table1documento.asString:=copy(table2sigla.asString+'   ',1,3)+'-'+table2cheque.asString;
dbcgrid1.rowcount:=dbcgrid1.height div 22;
dbcombobox1.setfocus;
end;


procedure TCheques.SpeedButton8Click(Sender: TObject);
begin
if table1.bof=false then table1.prior;
end;

procedure TCheques.SpeedButton9Click(Sender: TObject);
begin
if not table1.EOF then table1.next;
end;


procedure TCheques.SpeedButton6Click(Sender: TObject);
begin
panel1.visible:=true;
end;

procedure TCheques.SpeedButton7Click(Sender: TObject);
begin
panel1.visible:=false;
end;


procedure TCheques.Table2CalcFields(DataSet: TDataSet);
begin
table2Disponvel.ascurrency:=table2Saldo.ascurrency+table2Limitedecredito.ascurrency+
table2Titulosemcustdia.ascurrency*table2Percentualutilizvel.asfloat/100;
end;


procedure TCheques.DBLookupComboBox2CloseUp(Sender: TObject);
begin
table6.setrange([table5cliente.asstring,datetimepicker1.date],[table5cliente.asstring,datetimepicker1.date]);
CALC2;
end;




procedure TCheques.CheckBox2Click(Sender: TObject);
begin
table6.refresh;
CALC2;
end;

procedure TCheques.Table6FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var t2,t3,t4,t5:boolean;
begin
t2:=((table6data.asdatetime<hoje) and checkbox2.checked) or not checkbox2.checked;
t3:=((table6data.asdatetime>=hoje) and checkbox3.checked) or not checkbox3.checked;
t4:=((table6valor.asfloat<=table6ValorPago.asfloat) and checkbox4.checked) or not checkbox4.checked;
t5:=((table6valor.asfloat>table6ValorPago.asfloat) and checkbox5.checked) or not checkbox5.checked;
accept:=t2 and t3 and t4 and t5 and ((table4filial.asinteger=table6Filial.asinteger))
and (table6Codn1.asinteger>=2);
end;

procedure TCheques.DateTimePicker1Change(Sender: TObject);
begin

table6.setrange([table5cliente.asstring,datetimepicker1.date],[table5cliente.asstring,datetimepicker5.date]);
calc2;
end;

procedure TCheques.DateTimePicker3Change(Sender: TObject);
begin
with banco[combobox1.itemindex] do table1.setrange([bco,age,conta,datetimepicker3.date],[bco,age,conta,datetimepicker8.date]);
calc;
end;


procedure TCheques.DBLookupComboBox1CloseUp(Sender: TObject);
begin
if table1.state in [dsinsert,dsedit] then table1.cancel;
table2.refresh;
table1.refresh;
pag1.refresh;
end;


procedure TCheques.SpeedButton4Click(Sender: TObject);
begin
de:=datetimepicker1.date;
ate:=datetimepicker5.date;
if urelpag=nil then application.createform(Turelpag,urelpag);
urelpag.QuickReport1.preview;

end;

procedure TCheques.Table1BeforePost(DataSet: TDataSet);
begin
table1Filial.asinteger:=table2Filial.asinteger;
end;


procedure TCheques.SpeedButton10Click(Sender: TObject);
begin
if chqpg=nil then application.createform(Tchqpg,chqpg);
chqpg.QuickReport1.preview;
end;





procedure TCheques.DateTimePicker4Change(Sender: TObject);
begin

table6.setrange([datetimepicker4.date],[datetimepicker6.date]);
calc2;
end;

procedure TCheques.CheckBox6Click(Sender: TObject);
begin
checkbox2.checked:=checkbox6.checked;
end;

procedure TCheques.CheckBox7Click(Sender: TObject);
begin
checkbox3.checked:=checkbox7.checked;
end;

procedure TCheques.SpeedButton14Click(Sender: TObject);
begin
if relpgab=nil then application.createform(Trelpgab,relpgab);
relpgab.QuickReport1.preview;

end;


procedure TCheques.DBEdit3Exit(Sender: TObject);
begin
if table1.state in [dsedit,dsinsert] then if dbedit3.text='' then dbedit3.setfocus
ELSE dbcgrid1exit(Sender);
end;

procedure TCheques.DBEdit3Enter(Sender: TObject);
begin
 valida:=copy(DBEdit3.text,1,4);
end;

procedure TCheques.DateTimePicker2Exit(Sender: TObject);
begin
de:=datetimepicker2.date;
end;

procedure TCheques.DateTimePicker3Exit(Sender: TObject);
begin
de:=datetimepicker3.date;
end;

procedure TCheques.DateTimePicker1Exit(Sender: TObject);
begin
de:=datetimepicker1.date;
end;

procedure TCheques.DateTimePicker4Exit(Sender: TObject);
begin
de:=datetimepicker4.date;
end;

procedure TCheques.DateTimePicker6Exit(Sender: TObject);
begin
ate:=datetimepicker6.date;
end;

procedure TCheques.DateTimePicker5Exit(Sender: TObject);
begin
ate:=datetimepicker5.date;
end;

procedure TCheques.DateTimePicker8Exit(Sender: TObject);
begin
ate:=datetimepicker8.date;
end;

procedure TCheques.DateTimePicker7Exit(Sender: TObject);
begin
ate:=datetimepicker7.date;
end;

procedure TCheques.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if table1.state=dsinsert then SpeedButton5Click(Sender);
end;


procedure TCheques.ReclassificaodeCheque1Click(Sender: TObject);
begin
if reclas=nil then application.createform(Treclas,reclas);
reclas.showmodal;
table1.refresh;
end;

procedure TCheques.CpiadeCheque1Click(Sender: TObject);
begin
if relch=nil then application.createform(Trelch,relch);
relch.quickreport1.preview;
end;

procedure TCheques.SpeedButton2Click(Sender: TObject);
var error:byte;
    fil:textfile;
    p:byte;
    a:string;
begin
p:=strtoint(copy(porta, 4, 1));
Error:=PLUS_abre(p);
if error<>0 then
begin
try
a:=trim(formatfloat('##########0.00',table1valor.ascurrency));
Error:=PLUS_CampoCheque (p,0,table1favorecido.asstring);
Error:=PLUS_CampoCheque (p,1,cidade);
Error:=PLUS_CampoCheque (p,2,table1banco.asstring);
Error:=PLUS_CampoCheque (p,3,a);
a:=formatdatetime('ddmmyy',table1data.asdatetime);
Error:=PLUS_CampoCheque (p,4,a);
Error:=PLUS_CampoCheque (p,5,'REAL,REAIS');
Error:=PLUS_ImprimeCheque (p);
finally
Error:=PLUS_Ejeta(p);
PLUS_Fecha(p);
end;
end else Showmessage('Impressora de cheques não encontrada na porta '+porta);
end;


procedure TCheques.DataSource1StateChange(Sender: TObject);
begin
relatrios1.Enabled:=table1.state=dsbrowse;
tabelasderefernciacruzada1.Enabled:=table1.state=dsbrowse;
BITBTN1.enabled:= (table1.state in [dsedit,dsinsert]) AND  userdata.customizado.editar;
speedbutton6.enabled:=not (table1.state in [dsedit,dsinsert]);
speedbutton7.enabled:=not (table1.state in [dsedit,dsinsert]);
speedbutton8.enabled:=not (table1.state in [dsedit,dsinsert]);
speedbutton9.enabled:=not (table1.state in [dsedit,dsinsert]);
dbedt1.enabled:=Table1.State in [dsinsert,dsedit];
speedbutton5.enabled:=table1.active and (table1.recordcount>0);
dbcheckbox1.enabled:=Table1.State in [dsinsert,dsedit];

end;



procedure TCheques.PageControl2Change(Sender: TObject);
begin
case pagecontrol2.ActivePage.PageIndex of
0:table5.indexfieldnames:='Cliente';
1:table5.indexfieldnames:='Cgc';
end;

end;
procedure Tcheques.calc3;
var  gp:Tbookmark;
begin
gp:=pag1.getbookmark;
vab:=0;
vpag:=0;
pag1.disablecontrols;
pag1.first;
while not pag1.eof do
begin
vab:=vab+pag1Valor.ascurrency;
vpag:=vpag+pag1ValorPago.ascurrency;
pag1.next;
end;
if gp<>nil then pag1.gotobookmark(gp);
pag1.freebookmark(gp);
pag1.enablecontrols;
end;

function tcheques.strtocurrency(a:string):Currency;
var
g:Currency;
i:integer;
b:string;
begin
for i:=1 to length(a) do if a[i] in ['0'..'9','-',decimalseparator] then b:=b+a[i];
if b='' then b:='0';
texttofloat(pchar(b),g,fvCurrency);
if (length(trim(a))>0) and (trim(a)[1]='(') then g:=-g;
result:=g;
end;

procedure tcheques.DBCheckBox1Click(Sender: TObject);
VAR V:CURRENCY;
begin
if dbcheckbox1.focused then
begin
if pag1aprovadopor.IsNull then
begin
Showmessage('Pagamento ainda não foi aprovado');
dbcheckbox1.Checked:=false;
end else
begin
v:=STRTOCURRENCY(lab3.caption);
if pag1Valorpago.ascurrency=0 then
begin
pag1.edit;
pag1Valorpago.ascurrency:=pag1Valor.ascurrency;
v:=v+pag1Valorpago.ascurrency;
end
else
begin
pag1.edit;
v:=v-pag1Valorpago.ascurrency;
pag1Valorpago.ascurrency:=0;
end;
lab3.caption:=format('%m',[v]);
end;
DBCGRID1.SETFOCUS;
end;
end;

procedure tcheques.pag1BeforePost(DataSet: TDataSet);
begin
if checkbox1.checked then pag1Status.asstring:=Ansilowercase(pag1Status.asstring);
end;

procedure tcheques.pag1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var chk:boolean;
begin

chk:=(cxlog.opcx.itemindex=2) or
     ((ansiuppercase(pag1status.asstring)=pag1Status.asstring) and (cxlog.opcx.itemindex<=0)) or
     ((ansiuppercase(pag1STATUS.ASSTRING)<>pag1Status.asstring) and (cxlog.opcx.itemindex=1)) ;

accept:=(pag1Codn1.asinteger>1) and (ansiuppercase(pag1Status.asstring)<>'C') and chk
				  and (pag1DataPagto.isnull)
				  and ((pag1Filial.asinteger=table4filial.asinteger) or
				       (pag1Filial.asinteger=table2Somarcomfilial.asinteger));
end;

procedure tcheques.pag1PeriodicoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);

begin
case pag1Periodico.asinteger of
0 :text:='Unico';
13:text:='Semanal';
1 :text:='Mensal';
2 :text:='Bimestral';
3 :text:='Trimestral';
4 :Text:='Quadrimestral';
12:text:='Anual';
6 :text:='Semestral';
end;
end;

procedure tcheques.pag1PeriodicoSetText(Sender: TField;
  const Text: string);
var a:string;
    i:Integer;
begin
a:='Unico        Mensal       Bimestral    Trimestral   QuadrimestralSemestral    Semanal      Anual        ';
i:=(pos(text,a)-1) div 13;
case i of
5:i:=6;
6:i:=13;
7:i:=12;
end;
pag1Periodico.asinteger:=i;
end;


procedure tcheques.FormResize(Sender: TObject);
begin
dbcgrid1.rowcount:=dbcgrid1.height div 22;
end;


procedure tcheques.DatePicker1Change(Sender: TObject);
begin
pag1.setrange([datepicker1.date],[datepicker2.date]);
calc3;
lab2.caption:=format('%m',[vab]);
lab3.caption:=format('%m',[vpag]);
end;


procedure TCheques.DBCGrid1Exit(Sender: TObject);
var vl:currency;
TB:TBOOKMARK;
begin
if pag1.active and (dbcheckbox1.enabled)then
begin
if (pag1.state=dsinsert) then pag1.cancel else
begin
vl:=0;
TB:=PAG1.GetBookmark;
pag1.first;
dbmemo1.lines.clear;
pag1.disablecontrols;
while not pag1.eof do
begin
if pag1pago.asboolean then begin
                              pag1.edit;
                              pag1Banco.asinteger:=table1banco.asinteger;
                              pag1Agencia.asinteger:=table1agencia.asinteger;
                              pag1Conta.asstring:=table1Conta.asstring;
                              pag1Cheque.asstring:=dbedit3.text;
                              pag1.post;
                              vl:=vl+pag1Valorpago.asfloat;
                              dbmemo1.lines.add(pag1Histrico.asstring+' - '+pag1docref.AsString+' - '+format('%m',[pag1Valorpago.asfloat])+' Aprovado por '+pag1aprovadopor.asstring);
                              end;
pag1.next;
end;
pag1.GotoBookmark(tb);
pag1.FreeBookmark(tb);
pag1.enablecontrols;
table1Valor.ascurrency:=vl;
end;
end;
end;

procedure TCheques.DBEdt1KeyPress(Sender: TObject; var Key: Char);
begin
if (key='.') and (key<>decimalseparator) then key:=decimalseparator;
end;

procedure TCheques.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_insert) and speedbutton3.enabled then SpeedButton3Click(Sender);
end;


procedure TCheques.ToolBar1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 IF button=mbright then begin
                        checkbox1.visible:=not checkbox1.visible;
                        end;

end;

procedure TCheques.DBEdt1Enter(Sender: TObject);
begin
vx:=pag1valorpago.ascurrency;
end;

procedure TCheques.DBEdt1Exit(Sender: TObject);
var v:currency;
begin
v:=STRTOCURRENCY(lab3.caption);
if pag1valorpago.ascurrency<>vx then
begin
v:=v+pag1valorpago.ascurrency-vx;
lab3.caption:=format('%m',[v]);
end;
end;

procedure TCheques.prevpg1Click(Sender: TObject);
begin
if prevpg=nil then application.createform(Tprevpg,prevpg);
if userdata.Log then logevent(userdata.trn,'MESSAGE',userdata.login,modulo,prevpg.caption,'Iniciou a rotina');
prevpg.show;

end;

procedure TCheques.Table1AfterInsert(DataSet: TDataSet);
begin
table1data.asdatetime:=hoje;
table1filial.asinteger:=table2filial.asinteger;
table1tipo.asstring:='X';
table1Status.asstring:='A';
end;

procedure TCheques.pag3FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
accept:=pag3nossofornecedor.asboolean;
end;

procedure TCheques.Table5FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
accept:=table5nossofornecedor.asboolean;
end;

procedure TCheques.DateTimePicker2CloseUp(Sender: TObject);
begin
table1.setrange([datetimepicker2.date],[datetimepicker7.date]);
calc;
end;

procedure TCheques.Table1CalcFields(DataSet: TDataSet);
begin
table1account.asstring:=table1banco.asstring+'/'+table1agencia.asstring;
end;

procedure TCheques.DBComboBox1Exit(Sender: TObject);
var tb:Tbookmark;
     vb:Variant;
begin

vb:=table1conta.asvariant;
if table2.Locate('Conta',vb,[loCaseInsensitive]) then
begin
 table1Banco.asinteger:=table2banco.asinteger;
 table1Agencia.asinteger:=table2Agencia.asinteger;
 table1Conta.asstring:=table2Conta.asstring;
 table1documento.asString:=copy(table2sigla.asString+'  ',1,3)+'-'+table2cheque.asString;
tb:=pag1.GetBookmark;
pag1.refresh;
pag1.disablecontrols;
pag1.first;
while not pag1.eof do
begin
if pag1pago.asboolean then
begin
pag1.edit;
pag1Banco.asinteger:=table1Banco.asinteger;
pag1agencia.asinteger:=table1agencia.asinteger;
pag1conta.asstring:=table1conta.asstring;
pag1Cheque.asstring:=table1Documento.asstring;
pag1.post;
end;
pag1.next;
end;
pag1.gotobookmark(tb);
pag1.freebookmark(tb);
pag1.enablecontrols;
end else
begin
Showmessage('Conta inexistente!');
end;
end;
procedure TCheques.Table2AfterPost(DataSet: TDataSet);
begin
table2.refresh;
end;

procedure TCheques.Table1AfterPost(DataSet: TDataSet);
begin
table1.refresh;
end;

procedure TCheques.Table3AfterPost(DataSet: TDataSet);
begin
table3.refresh;
end;

procedure TCheques.pag1AfterPost(DataSet: TDataSet);
begin
pag1.refresh;
end;

end.
