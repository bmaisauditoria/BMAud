unit frmRelControlePaciente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRelControlePacientes = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    rdgAnalise: TRadioGroup;
    cmdRelCodigoN: TBitBtn;
    cmdRelCodigoNDemo: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure cmdRelCodigoNClick(Sender: TObject);
    procedure cmdRelCodigoNDemoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelControlePacientes: TfrmRelControlePacientes;

implementation

uses frmPrincipal, dmRelatorios;

{$R *.DFM}

procedure TfrmRelControlePacientes.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);
    frmRelControlePacientes.tag:=0;
end;

procedure TfrmRelControlePacientes.cmdRelCodigoNClick(Sender: TObject);
var i,iMes,iAno,m,a,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12:integer;
var iLinhaA:string;
begin
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=false ';
    1:iLinhaA:=' and AtendHI.PosAnalise=true ';
    2:iLinhaA:=' ';
    end;

    with dmRelatorio do
    begin
        qryControlP.SQL.Clear;
        qryControlP.SQL.Text:= 'Select Cliente as Cliente,  '+
                               '       Hospital as Hospital, '+
                               '       count(Paciente) as Capeantes, '+
                               '       sum(Parcial) as Parcial  '+
                               'from  AtendHI '+
                               'where AnoCompetencia=:xAno and '+
                               '      MesCompetencia=:xMes  '+iLinhaA+
                               'group by Cliente,Hospital  '+
                               'order by Cliente,Hospital ';

        qryControlP.ParamByName('xAno').asInteger:=iAno;
        qryControlP.ParamByName('xMes').asInteger:=iMes;
        qryControlP.Open;

        dbControlP.Close;
        dbControlP.SQL.Text:='Delete from relControlePaciente';
        dbControlP.Execute;
        dbControlP.SQL.Text:='Select * from relControlePaciente';
        dbControlP.Open;

        i:=0;
        c1:=0;
        c2:=0;
        c3:=0;
        c4:=0;
        c5:=0;
        c6:=0;
        c7:=0;
        c8:=0;
        c9:=0;
        c10:=0;
        c11:=0;
        c12:=0;
        dbCliente.IndexFieldNames:='Nome';
        dbCliente.First;
        while not dbCliente.Eof do
        begin
            if qryControlP.Locate('Cliente',dbClienteCliente.value,[]) then
            begin
                i:=i+1;
                if i>12 then
                begin
                    ShowMessage('Planilha permite apenas 12 Clientes. Selecione o relatorio demonstrativo');
                    dbControlP.Close;
                    dbCliente.IndexFieldNames:='Cliente';
                    abort;
                end;
                case i of
                1:c1:=dbClienteCliente.value;
                2:c2:=dbClienteCliente.value;
                3:c3:=dbClienteCliente.value;
                4:c4:=dbClienteCliente.value;
                5:c5:=dbClienteCliente.value;
                6:c6:=dbClienteCliente.value;
                7:c7:=dbClienteCliente.value;
                8:c8:=dbClienteCliente.value;
                9:c9:=dbClienteCliente.value;
                10:c10:=dbClienteCliente.value;
                11:c11:=dbClienteCliente.value;
                12:c12:=dbClienteCliente.value;
                end;
            end;
            dbCliente.Next;
        end;

        qryControlP.First;
        while not qryControlP.Eof do
        begin
            if dbControlP.Locate('Hospital',qryControlPHospitalNome.value,[]) then
                dbControlP.Edit
            else
                dbControlP.Insert;
            dbControlPHospital.value:=qryControlPHospitalNome.value;
            dbControlPCliente1.value:=c1;
            dbControlPCliente2.value:=c2;
            dbControlPCliente3.value:=c3;
            dbControlPCliente4.value:=c4;
            dbControlPCliente5.value:=c5;
            dbControlPCliente6.value:=c6;
            dbControlPCliente7.value:=c7;
            dbControlPCliente8.value:=c8;
            dbControlPCliente9.value:=c9;
            dbControlPCliente10.value:=c10;
            dbControlPCliente11.value:=c11;
            dbControlPCliente11.value:=c12;
            if qryControlPCliente.value=c1 then
                dbControlPCapeante1.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c2 then
                dbControlPCapeante2.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c3 then
                dbControlPCapeante3.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c4 then
                dbControlPCapeante4.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c5 then
                dbControlPCapeante5.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c6 then
                dbControlPCapeante6.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c7 then
                dbControlPCapeante7.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c8 then
                dbControlPCapeante8.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c9 then
                dbControlPCapeante9.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c10 then
                dbControlPCapeante10.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c11 then
                dbControlPCapeante11.value:=qryControlPCapeantes.value;
            if qryControlPCliente.value=c12 then
                dbControlPCapeante12.value:=qryControlPCapeantes.value;
            qryControlP.Next;
        end;

        frmMenu.rvBBAuditoria.SetParam('Titulo','Controle de Pacientes por Cliente');
        frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);

        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pós-Análise');
        2:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise e Pós-Análise');
        end;

        if frmRelControlePacientes.tag=0 then
        begin
            frmMenu.rvBBAuditoria.SelectReport('relControlP',true);
            frmMenu.rvBBAuditoria.Execute;
        end
        else
        begin
            with frmMenu do
            begin
                ExcelExport.Dataset:=dbControlP;      //nao tem %
                ExcelExport.ExcelVisible:=true;
                ExcelExport.ExportDataset;
                ExcelExport.Disconnect;
            end;
        end;
        frmRelControlePacientes.tag:=0;
     end;
end;

procedure TfrmRelControlePacientes.cmdRelCodigoNDemoClick(Sender: TObject);
var i,iMes,iAno,m,a:integer;
var iLinhaA:string;
begin
     iMes:=StrToInt(Edit1.Text);
     iAno:=StrToInt(Edit2.Text);

    case rdgAnalise.ItemIndex of
    0:iLinhaA:=' and AtendHI.PosAnalise=false ';
    1:iLinhaA:=' and AtendHI.PosAnalise=true ';
    2:iLinhaA:=' ';
    end;

    with dmRelatorio do
    begin
        qryControlP.SQL.Clear;
        qryControlP.SQL.Text:= 'Select Cliente as Cliente,  '+
                               '       Hospital as Hospital, '+
                               '       count(Paciente) as Capeantes, '+
                               '       sum(Parcial) as Parcial  '+
                               'from  AtendHI '+
                               'where AnoCompetencia=:xAno and '+
                               '      MesCompetencia=:xMes  '+iLinhaA+
                               'group by Cliente,Hospital  '+
                               'order by Cliente, Capeantes desc, Hospital ';

        qryControlP.ParamByName('xAno').asInteger:=iAno;
        qryControlP.ParamByName('xMes').asInteger:=iMes;
        qryControlP.Open;

        frmMenu.rvBBAuditoria.SetParam('Titulo','Controle de Pacientes por Cliente');
        frmMenu.rvBBAuditoria.SetParam('Competencia',Edit1.Text+'/'+Edit2.Text);

        case rdgAnalise.ItemIndex of
        0:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise');
        1:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pós-Análise');
        2:frmMenu.rvBBAuditoria.SetParam('Titulo2','Pré-Análise e Pós-Análise');
        end;

        if frmRelControlePacientes.tag=0 then
        begin
            frmMenu.rvBBAuditoria.SelectReport('relControlPDemo',true);
            frmMenu.rvBBAuditoria.Execute;
        end
        else
        begin
            with frmMenu do
            begin
                ExcelExport.Dataset:=qryControlP;  //nao tem % 
                ExcelExport.ExcelVisible:=true;
                ExcelExport.ExportDataset;
                ExcelExport.Disconnect;
            end;
        end;
        frmRelControlePacientes.tag:=0;
     end;

end;

procedure TfrmRelControlePacientes.BitBtn2Click(Sender: TObject);
begin
     frmRelControlePacientes.tag:=1;
     cmdRelCodigoNClick(sender);
end;

procedure TfrmRelControlePacientes.BitBtn3Click(Sender: TObject);
begin
     frmRelControlePacientes.tag:=1;
     cmdRelCodigoNDemoClick(sender);
end;

end.
