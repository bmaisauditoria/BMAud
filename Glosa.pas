unit Glosa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MSAccess, MemDS, DBTables, StdCtrls, Grids,
  DBGrids, DASQLMonitor, MSSQLMonitor;

type
  TForm1 = class(TForm)
    Antigo: TTable;
    AntigoCliente: TIntegerField;
    AntigoAtendimentoHI: TIntegerField;
    AntigoTipo: TStringField;
    AntigoGlosaI: TStringField;
    AntigoValor: TCurrencyField;
    AntigoValorApresentado: TCurrencyField;
    Novo: TMSQuery;
    dados: TMSConnection;
    NovoCliente: TIntegerField;
    NovoAtendimentoHI: TIntegerField;
    NovoTipo: TStringField;
    NovoGlosaI: TStringField;
    NovoValor: TCurrencyField;
    NovoValorApresentado: TCurrencyField;
    Button1: TButton;
    dsAntigo: TDataSource;
    Memo1: TMemo;
    dsNovo: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    MSSQLMonitor1: TMSSQLMonitor;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AntigoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
    Antigo.First;
    while not Antigo.eof do
    begin
        if  Novo.RecordCount>0 then
        begin
            if (AntigoValor.value<>NovoValor.value) and
               (Novovalor.value=0) then
            begin
                Memo1.Lines.Add(AntigoCliente.AsString+'-'+AntigoAtendimentoHI.asstring+'-'+AntigoGlosaI.value+'-'+
                                AntigoValor.AsString+'-'+NovoValor.AsString);
            end;
        end;
        Antigo.Next;
    end;

end;

procedure TForm1.FormShow(Sender: TObject);
var iservidor:Tstringlist;
var iconexao,idirSql:string;
begin
   iDirsql:=ExtractFilePath(Application.ExeName);
   iservidor:=tstringlist.create;
   iservidor.clear;

   iServidor.LoadFromFile(idirSql+'servidor.ini');
        iconexao:='Provider=SQLOLEDB.1;User ID=androsadm;Password=andros@2012;'+
              'Data Source='+iservidor.values['SERVIDOR']+';'+
              'Initial Catalog=BBAud;'+
              'Persist Security Info=True';

      dados.ConnectString:=iconexao;
      dados.Connected:=true;

    Antigo.Open;
    Novo.Open;

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
    Antigo.Locate('AtendimentoHI',trim(edit1.Text),[loPartialKey]);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    Antigo.First;
    while not Antigo.eof do
    begin
        if  Novo.RecordCount>0 then
        begin
            if (AntigoValor.value<>NovoValor.value) and
               (NovoValor.value=0) then
            begin
                Memo1.Lines.Add(AntigoCliente.AsString+'-'+AntigoAtendimentoHI.asstring+'-'+AntigoGlosaI.value+'-'+
                                AntigoValor.AsString+'-'+NovoValor.AsString);
                Novo.Edit;
                NovoValor.value:=AntigoValor.value;
                Novo.Post;
            end;
        end;
        Antigo.Next;
    end;

end;

procedure TForm1.AntigoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    accept:=AntigoCliente.value=28;
end;

end.

