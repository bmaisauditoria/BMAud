unit frmRetornoHICompt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, StdCtrls, Buttons, DBCtrls, ComCtrls, Variants;

type
  TfrmRetornoCompt = class(TForm)
    Panel1: TPanel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    cmdCompetencia: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    cmdComplemento: TBitBtn;
    rdgComplemento: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure cmdCompetenciaClick(Sender: TObject);
    procedure cmdComplementoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRetornoCompt: TfrmRetornoCompt;

implementation

uses frmRetornosHI, frmPrincipal, frmRetornosPS;

{$R *.DFM}

procedure TfrmRetornoCompt.FormShow(Sender: TObject);
var d,m,a:word;
begin
    DecodeDate(date,a,m,d);
    Edit1.Text:=IntToStr(m);
    Edit2.Text:=IntTostr(a);

end;

procedure TfrmRetornoCompt.cmdCompetenciaClick(Sender: TObject);
var iRetorno,iResultado:integer;
var iMes,iAno,iProdutividade:integer;
begin

case frmRetornoCompt.Tag of
0: // Auditoria

with frmRetornoHI do
begin
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    iRetorno:=dbRetornoRetorno.value;
    iMes:=StrToInt(Edit1.Text);
    iAno:=StrToInt(Edit2.Text);

    if (iAno<2000) or (iAno>2100) then
    begin
        ShowMessage('Ano inválido');
        abort;
    end;
    if (iMes<1) or (iMes>13) then
    begin
        ShowMessage('Mes inválido');
        abort;
    end;
    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem atualizados');
        abort;
    end;
    if dbRetornoProcessado.value=true then
    begin
        iResultado:=Application.MessageBox('Retorno ja processado. Reabre?',
              'Aviso', mb_yesno+ mb_iconExclamation);
        if(iResultado=id_no) then abort;
        dbRetorno.Locate('Retorno',iRetorno,[]);
        dbRetorno.Edit;
        dbRetornoDataProcessamento.value:=date;
        dbRetornoHoraProcessamento.value:=time;
        dbRetornoUsuario.value:=frmPrincipal.iUsuario;
        dbRetornoProcessado.value:=false;
        dbRetorno.Post;

    end;
    iResultado:=Application.MessageBox('Confirme a alteração da competencia',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;

    qryProcessoTrab.sql.text:='Update RetornoHI set MesCompetencia=:iMes, '+
                              '                     AnoCompetencia=:iAno '+
                              'where Retorno=:iRet ';

    qryProcessoTrab.ParamByName('iMes').value:=iMes;
    qryProcessoTrab.ParamByName('iAno').value:=iAno;
    qryProcessoTrab.ParamByName('iRet').value:=iretorno;
    qryProcessoTrab.Execute;
    qryProcessoTrab.Close;

    dbProcesso.Refresh;
    ShowMessage('Competencia atualizada com sucesso');
    frmRetornoCompt.Close;
end;
1: //PS
with frmRetornoPS do
begin
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    iRetorno:=dbRetornoRetorno.value;
    iMes:=StrToInt(Edit1.Text);
    iAno:=StrToInt(Edit2.Text);

    if (iAno<2000) or (iAno>2100) then
    begin
        ShowMessage('Ano inválido');
        abort;
    end;
    if (iMes<1) or (iMes>13) then
    begin
        ShowMessage('Mes inválido');
        abort;
    end;
    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem atualizados');
        abort;
    end;
    if dbRetornoProcessado.value=true then
    begin
        iResultado:=Application.MessageBox('Retorno ja processado. Reabre?',
              'Aviso', mb_yesno+ mb_iconExclamation);
        if(iResultado=id_no) then abort;
        dbRetorno.Locate('Retorno',iRetorno,[]);
        dbRetorno.Edit;
        dbRetornoDataProcessamento.value:=date;
        dbRetornoHoraProcessamento.value:=time;
        dbRetornoUsuario.value:=frmPrincipal.iUsuario;
        dbRetornoProcessado.value:=false;
        dbRetorno.Post;

    end;
    iResultado:=Application.MessageBox('Confirme a alteração da competencia',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;

    qryProcessoTrab.sql.text:='Update RetornoPS set MesCompetencia=:iMes, '+
                              '                     AnoCompetencia=:iAno '+
                              'where Retorno=:iRet ';

    qryProcessoTrab.ParamByName('iMes').value:=iMes;
    qryProcessoTrab.ParamByName('iAno').value:=iAno;
    qryProcessoTrab.ParamByName('iRet').value:=iretorno;
    qryProcessoTrab.Execute;
    qryProcessoTrab.Close;

    dbProcesso.Refresh;
    ShowMessage('Competencia atualizada com sucesso');
    frmRetornoCompt.Close;
end;
end;

end;

procedure TfrmRetornoCompt.cmdComplementoClick(Sender: TObject);
var iRetorno,iResultado:integer;
var iProdutividade:integer;
begin

case frmRetornoCompt.Tag of
0: // Auditoria

with frmRetornoHI do
begin
    dbProcesso.Tag:=0;
    dbProcesso.Refresh;
    iRetorno:=dbRetornoRetorno.value;
    if dbProcesso.RecordCount=0 then
    begin
        ShowMessage('Não existem registros para serem atualizados');
        abort;
    end;
    if dbRetornoProcessado.value=true then
    begin
        iResultado:=Application.MessageBox('Retorno ja processado. Reabre?',
              'Aviso', mb_yesno+ mb_iconExclamation);
        if(iResultado=id_no) then abort;
        dbRetorno.Locate('Retorno',iRetorno,[]);
        dbRetorno.Edit;
        dbRetornoDataProcessamento.value:=date;
        dbRetornoHoraProcessamento.value:=time;
        dbRetornoUsuario.value:=frmPrincipal.iUsuario;
        dbRetornoProcessado.value:=false;
        dbRetorno.Post;

    end;
    iResultado:=Application.MessageBox('Confirme a alteração dos complementos',
              'Aviso', mb_yesno+ mb_iconExclamation);
    if(iResultado=id_no) then abort;

    qryProcessoTrab.sql.text:='Update RetornoHI set Complemento=:iComplemento '+
                              'where Retorno=:iRet ';

    case rdgComplemento.ItemIndex of
    0:qryProcessoTrab.ParamByName('iComplemento').value:=true;
    1:qryProcessoTrab.ParamByName('iComplemento').value:=false;
    end;
    qryProcessoTrab.ParamByName('iRet').value:=iretorno;
    qryProcessoTrab.Execute;
    qryProcessoTrab.Close;

    dbProcesso.Refresh;
    ShowMessage('Complementos alterados com sucesso');
    frmRetornoCompt.Close;
end;
1: //PS
ShowMessage('Opção não disponível para Retorno PS');
end;


end;

end.
