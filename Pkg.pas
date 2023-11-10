unit Pkg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, Buttons, ExtCtrls, ComCtrls, ADODB;

type
  TFrmPKG = class(TFrmMain)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BtnOK: TBitBtn;
    BtnReset: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel2: TPanel;
    Label5: TLabel;
    User: TLabel;
    User_N: TLabel;
    Label1: TLabel;
    Memo1: TMemo;
    procedure BtnOKClick(Sender: TObject);
    procedure BtnResetClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPKG: TFrmPKG;

implementation

uses DBDM, Global, Commfunc, MySQLc;

{$R *.dfm}

procedure TFrmPKG.BtnOKClick(Sender: TObject);
var
  Qrys: TADOQuery;
  SQLs: TStrings;
  tmpSql :String;
  ls_chk, ls_psw_msg: String;

begin
  inherited;
  SQLs:=TStringList.Create;
  SQLs.Clear;

  tmpSql:=getChkSqlStr(0);
  SetParamter(tmpSql,'$DOC_CODE$',Qt(User.Caption));
  SetParamter(tmpSql,'$PSWD_DESC$',Qt(trim(Edit1.Text)));

  SQLs.Text:=tmpSql;


  if DM.OpenSQL(SQLs,Qrys) then
  begin
    if trim(Edit1.Text) = trim(Edit2.Text) then
    begin
      MessageDlg('�s�K�X����P�±K�X�ۦP',mtWarning,[mbOk],0);
      Exit;
    end;

    if trim(Edit2.Text) = trim(Edit3.Text) then
    begin
      SQLs.Clear;
      tmpSql:=getChkSqlStr(1);
      SetParamter(tmpSql,'$PSW_DESC$',Qt(trim(Edit2.Text)));
      SetParamter(tmpSql,'$UPD_OPER$',Qt(trim(User.Caption)));

      //111.01.07 shh ITe 11138 modify ���M�s�K�X�{�Ҿ���
      {
      SetParamter(tmpSql,'$UPD_DATE$',Qt(ROCDate(now,'')));
      SetParamter(tmpSql,'$UPD_TIME$',Qt(ROCTime(now,'')));
      SetParamter(tmpSql,'$DOC_CODE$',Qt(User.Caption));
      SetParamter(tmpSql,'$OLDPSW_DESC$',Qt(trim(Edit1.Text)));

      SQLs.Text:=tmpSql;
      }

      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Text := tmpSql;
      DM.QryTemp.Open;

      ls_chk := DM.QryTemp.fieldbyname('CHK').AsString;
      ls_psw_msg:= copy(TRIM(ls_chk), 3, length(ls_chk));
      ls_chk := copy(TRIM(ls_chk),1,1);

      //111.01.07 shh ITe 11138 modify ���M�s�K�X�{�Ҿ���
      //if not DM.ExecSQL(SQLs) then
      if ls_chk <> 'Y' then
      begin
        //111.01.07 shh ITe 11138 modify ���M�s�K�X�{�Ҿ���
        //ShowMessage('�ܧ�K�X�@�~�������A�ЦA���T�{�K�X�C');
        ShowMessage(ls_psw_msg);
        exit;
      end
      else
        ShowMessage('�K�X�ק令�\');
      BtnReset.OnClick(Self);
    end
    else
      MessageDlg('�z�ҿ�J�s�K�X�P�T�{�K�X���ۦP!'+#13+'�ЦA�^�h�ק�s�K�X�νT�{�K�X�C',mtWarning,[mbOk],0);
  end
  else
    MessageDlg('�z�ҿ�J�����s�αK�X�����~!'+#13+'�ЦA�^�h�ˬd�O�_��J���T�C',mtWarning,[mbOk],0);

  FreeAndNil(SQLs);
  Self.Close;
end;

procedure TFrmPKG.BtnResetClick(Sender: TObject);
begin
  inherited;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TFrmPKG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := Cafree;
end;


//111.01.14 shh ITe 11138 add �e�{�K�X�W�h
procedure TFrmPKG.FormShow(Sender: TObject);
var
  ls_psw_msg: String;
  li_i: integer;
begin
  inherited;

  Memo1.Color := $00D3E4AF;

  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := 'select f_use_pwd(''R'','''','''') psw_msg from dual';
  DM.QryTemp.Open;

  ls_psw_msg := DM.QryTemp.fieldbyname('psw_msg').AsString;

  Memo1.lines.Clear;

  li_i := 0;
  li_i := pos('_', WideString(ls_psw_msg));

  while li_i > 0 do
  begin
    Memo1.lines.Add(copy(TRIM(WideString(ls_psw_msg)), 1, li_i - 1) + chr(13) + chr(10));
    ls_psw_msg:= copy(TRIM(WideString(ls_psw_msg)), li_i + 1, length(WideString(ls_psw_msg)));
    li_i := pos('_', WideString(ls_psw_msg));
  end;

  Memo1.lines.Add(ls_psw_msg)


end;

end.
