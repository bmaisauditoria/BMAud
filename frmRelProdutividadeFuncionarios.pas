unit frmRelProdutividadeFuncionarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, MSAccess, OLEDBAccess, OLEDBC, OLEDBIntf, DBAccess, MemDS, StdCtrls, Buttons, DBCtrls, ComCtrls, Menus;

type
  TfrmRelProdutividadeFuncionario = class(TForm)
    cmdRelCodigo: TBitBtn;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    cmpCodClienteIni: TDBText;
    cmpDataIni: TDateTimePicker;
    cmpDataFim: TDateTimePicker;
    cmpClienteIni: TDBLookupComboBox;
    chkCliente: TCheckBox;
    dbClienteIni: TMSTable;
    dbClienteIniCliente: TIntegerField;
    dbClienteIniNome: TStringField;
    dsClienteIni: TDataSource;
    PopupMenu1: TPopupMenu;
    LogEstatsticas1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmdRelCodigoClick(Sender: TObject);
    procedure chkClienteClick(Sender: TObject);
    procedure LogEstatsticas1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProdutividadeFuncionario: TfrmRelProdutividadeFuncionario;

implementation

uses frmPrincipal, dmRelatorios, frmLogs;

{$R *.DFM}

procedure TfrmRelProdutividadeFuncionario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    dbClienteIni.close;
end;

procedure TfrmRelProdutividadeFuncionario.FormShow(Sender: TObject);
begin
    dbClienteIni.Open;
    cmpClienteIni.KeyValue:=dbClienteIniCliente.Value;

end;

procedure TfrmRelProdutividadeFuncionario.FormCreate(Sender: TObject);
begin
    cmpDataIni.date:=date;
    cmpDataFim.date:=date;
end;

procedure TfrmRelProdutividadeFuncionario.cmdRelCodigoClick(Sender: TObject);
var iClienteIni:integer;
var iDataIni,iDataFim:TDate;
var iLInhaC:string;
begin
     iClienteIni:=dbClienteIniCliente.Value;
     iDataIni:=cmpDataIni.date;
     iDataFim:=cmpDataFim.date;

     if iDataFim < iDataIni then
     begin
         ShowMessage('Data Final menor que Inicial');
         abort;
     end;

    if chkCliente.Checked then
       iLinhaC:=''
    else
       iLinhaC:=' and Cliente=:CliIni ';


     with dmRelatorio do
     begin

         qryRelFun.Close;
         qryrelFun.SQL.Clear;
         qryrelFun.SQL.Text:='Delete from relProdFun ';
         qryRelFun.Execute;
         qryrelFun.SQL.Text:='Select * from relProdFun '+
                             'order by Usuario ';
         qryRelFun.Open;


//**** Home Care
         qryrelFunHC.SQL.Clear;
         qryrelFunHC.SQL.Text:='Select AtendHCItem.UsuarioI as UsuarioI,'+
                               '       count(AtendHCItem.usuarioI) as Qtd '+
                               'from AtendHC, AtendHCItem '+
                               'where AtendHC.AtendimentoHC1=AtendHCItem.AtendimentoHC1 and'+
                               '      AtendHCItem.DataInclusao>=:Ini and '+
                               '      AtendHCItem.DataInclusao<=:Fim '+
                               iLinhaC+
                               'group by AtendHCItem.UsuarioI  order by AtendHCItem.UsuarioI ';

         if not chkCliente.Checked then
            qryrelFunHC.ParamByName('CliIni').Value:=iClienteIni;
         qryrelFunHC.ParamByName('Ini').asDate:=iDataIni;
         qryrelFunHC.ParamByName('Fim').asDate:=iDataFim;
         qryRelFunHC.Open;
         qryRelFunHC.First;
         while not qryRelFunHC.eof do
         begin
            if not qryRelFun.Locate('Usuario',qryRelFunHCUsuarioi.value,[]) then
            begin
                qryRelFun.Insert;
                qryRelFunUsuario.value:=qryRelFunHCUsuarioi.value;
                qryRelFun.Post;
            end;
            qryRelFunHC.Next;
         end;

         qryrelFunHC1.SQL.Clear;
         qryrelFunHC1.SQL.Text:='Select AtendHCItem.Usuario as Usuario,'+
                               '        count(AtendHCItem.usuario) as Qtd '+
                               'from AtendHC, AtendHCItem '+
                               'where AtendHC.AtendimentoHC1=AtendHCItem.AtendimentoHC1 and'+
                               '      AtendHCItem.DataAlteracao>=:Ini and '+
                               '      AtendHCItem.DataAlteracao<=:Fim '+
                               iLinhaC+
                               'group by AtendHCItem.Usuario order by AtendHCItem.Usuario ';

         if not chkCliente.Checked then
            qryrelFunHC1.ParamByName('CliIni').Value:=iClienteIni;
         qryrelFunHC1.ParamByName('Ini').asDate:=iDataIni;
         qryrelFunHC1.ParamByName('Fim').asDate:=iDataFim;
         qryrelFunHC1.Open;

         qryRelFunHC1.First;
         while not qryRelFunHC1.eof do
         begin
            if not qryRelFun.Locate('Usuario',qryRelFunHC1Usuario.value,[]) then
            begin
                qryRelFun.Insert;
                qryRelFunUsuario.value:=qryRelFunHC1Usuario.value;
                qryRelFun.Post;
            end;
            qryRelFunHC1.Next;
         end;

//**** Estatisticas
         qryrelFunHI.SQL.Clear;
         qryrelFunHI.SQL.Text:='Select UsuarioI as UsuarioI,'+
                               '       count(UsuarioI) as Qtd '+
                               'from AtendHI '+
                               'where DataInclusao>=:Ini and '+
                               '      DataInclusao<=:Fim '+
                               iLinhaC+
                               'group by UsuarioI  order by UsuarioI ';

         if not chkCliente.Checked then
            qryrelFunHI.ParamByName('CliIni').Value:=iClienteIni;
         qryrelFunHI.ParamByName('Ini').asDate:=iDataIni;
         qryrelFunHI.ParamByName('Fim').asDate:=iDataFim;
         qryRelFunHI.Open;
         qryRelFunHI.First;
         while not qryRelFunHI.eof do
         begin
            if not qryRelFun.Locate('Usuario',qryRelFunHIUsuarioi.value,[]) then
            begin
                qryRelFun.Insert;
                qryRelFunUsuario.value:=qryRelFunHIUsuarioi.value;
                qryRelFun.Post;
            end;
            qryRelFunHI.Next;
         end;

         qryrelFunHI1.SQL.Clear;
         qryrelFunHI1.SQL.Text:='Select Usuario as Usuario,'+
                               '       count(usuario) as Qtd '+
                               'from AtendHI '+
                               'where DataAlteracao>=:Ini and '+
                               '      DataAlteracao<=:Fim '+
                               iLinhaC+
                               'group by Usuario order by Usuario ';

         if not chkCliente.Checked then
            qryrelFunHI1.ParamByName('CliIni').Value:=iClienteIni;
         qryrelFunHI1.ParamByName('Ini').asDate:=iDataIni;
         qryrelFunHI1.ParamByName('Fim').asDate:=iDataFim;
         qryrelFunHI1.Open;
         qryRelFunHI1.First;
         while not qryRelFunHI1.eof do
         begin
            if not qryRelFun.Locate('Usuario',qryRelFunHI1Usuario.value,[]) then
            begin
                qryRelFun.Insert;
                qryRelFunUsuario.value:=qryRelFunHI1Usuario.value;
                qryRelFun.Post;
            end;
            qryRelFunHI1.Next;
         end;


//**** PS
         qryrelFunPS.SQL.Clear;
         qryrelFunPS.SQL.Text:='Select UsuarioI as UsuarioI,'+
                               '       count(usuarioI) as Qtd '+
                               'from  AtendHPS '+
                               'where DataInclusao>=:Ini and '+
                               '      DataInclusao<=:Fim  '+
                               iLinhaC+
                               'group by UsuarioI  order by UsuarioI ';

         if not chkCliente.Checked then
            qryrelFunPS.ParamByName('CliIni').Value:=iClienteIni;
         qryrelFunPS.ParamByName('Ini').asDate:=iDataIni;
         qryrelFunPS.ParamByName('Fim').asDate:=iDataFim;
         qryRelFunPS.Open;
         qryRelFunPS.First;
         while not qryRelFunPS.eof do
         begin
            if not qryRelFun.Locate('Usuario',qryRelFunPSUsuarioi.value,[]) then
            begin
                qryRelFun.Insert;
                qryRelFunUsuario.value:=qryRelFunPSUsuarioi.value;
                qryRelFun.Post;
            end;
            qryRelFunPS.Next;
         end;

         qryrelFunPS1.SQL.Clear;
         qryrelFunPS1.SQL.Text:='Select Usuario as Usuario,'+
                               '       count(Usuario) as Qtd '+
                               'from  AtendHPS '+
                               'where DataAlteracao>=:Ini and '+
                               '      DataAlteracao<=:Fim  '+
                               iLinhaC+
                               'group by Usuario  order by Usuario ';

         if not chkCliente.Checked then
            qryrelFunPS1.ParamByName('CliIni').Value:=iClienteIni;
         qryrelFunPS1.ParamByName('Ini').asDate:=iDataIni;
         qryrelFunPS1.ParamByName('Fim').asDate:=iDataFim;
         qryRelFunPS1.Open;
         qryRelFunPS1.First;
         while not qryRelFunPS1.eof do
         begin
            if not qryRelFun.Locate('Usuario',qryRelFunPS1Usuario.value,[]) then
            begin
                qryRelFun.Insert;
                qryRelFunUsuario.value:=qryRelFunPS1Usuario.value;
                qryRelFun.Post;
            end;
            qryRelFunPS1.Next;
         end;

         qryRelFun.Refresh;
         if qryRelFun.RecordCount=0 then
         begin
            ShowMessage('Nenhuma informação a ser impressa');
            abort;
         end;
         if not chkCliente.Checked then
             frmMenu.RvBBAuditoria.SetParam('Titulo',dbClienteIniNome.value)
         else
             frmMenu.RvBBAuditoria.SetParam('Titulo','Todos os clientes');
         frmMenu.RvBBAuditoria.SetParam('DataIni',DateToStr(iDataIni));
         frmMenu.RvBBAuditoria.SetParam('DataFim',DateToStr(iDataFim));
         frmMenu.rvBBAuditoria.SelectReport('relProdutividadeFun',true);
         frmMenu.rvBBAuditoria.Execute;
     end;
end;

procedure TfrmRelProdutividadeFuncionario.chkClienteClick(Sender: TObject);
begin
    if chkCliente.Checked then
    begin
       cmpClienteIni.Visible:=false;
       cmpCodClienteIni.visible:=false;
    end
    else
    begin
       cmpClienteIni.Visible:=true;
       cmpCodClienteIni.Visible:=true;
    end;
end;

procedure TfrmRelProdutividadeFuncionario.LogEstatsticas1Click(
  Sender: TObject);
begin
    if frmLog=nil then
      Application.CreateForm(TfrmLog, frmLog);
    frmLog.ShowModal;
end;

end.
