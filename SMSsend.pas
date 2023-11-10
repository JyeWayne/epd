unit SMSsend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, ExtCtrls, ComCtrls, StdCtrls, Grids, Buttons;

type
  TFrmSMSsend = class(TFrmMain)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    btnSMSsend: TBitBtn;
    BitBtn2: TBitBtn;
    Panel6: TPanel;
    Panel7: TPanel;
    Button1: TButton;
    Button2: TButton;
    Panel8: TPanel;
    Panel9: TPanel;
    ListBox1: TListBox;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    ListBox3: TListBox;
    ListBox4: TListBox;
    Edit2: TEdit;
    Panel10: TPanel;
    ListBox2: TListBox;
    Panel12: TPanel;
    BitBtn1: TBitBtn;
    CBSMSGROUP: TComboBox;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    EdtSMSGROUP: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure btnSMSsendClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure CBSMSGROUPChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    send_str,GROUPNAME : string;
  end;

var
  FrmSMSsend: TFrmSMSsend;

implementation

uses Commfunc, DBDM, Global, ERsFunc, MySQLc;

{$R *.dfm}
//萬芳、雙和 雙向:wfsms2 單向:wfsms 附醫:twnsms_content
//           醫師手機資料:phs_data 附醫:twnsms_basic

procedure TFrmSMSsend.Button1Click(Sender: TObject);
begin
  inherited;
  ListBox2.Items.Add(ListBox1.Items.Strings[ListBox1.ItemIndex]+'_'+ListBox3.Items.Strings[ListBox1.ItemIndex]+'_'+ListBox4.Items.Strings[ListBox1.ItemIndex]);
end;

procedure TFrmSMSsend.btnSMSsendClick(Sender: TObject);
var
  Paramter,PType,RType,PData,sqlst : TStrings;
  SpName, ExeSPResult : STRING;
  senduser: string;
  i : integer;
begin
  inherited;
  try
    if (Trim(Edit2.Text)<>'') and (Trim(ListBox2.Items.Text)<> '') then
    begin
      //發送
      Paramter:=TStringList.Create;
      PType:=TStringList.Create;
      RType:=TStringList.Create;
      PData:=TStringList.Create;
      for i := 0 to ListBox2.Items.Count-1 do
      begin
        //雙向
        SpName:=getSpSql(7,Paramter,PType,RType);
        PData.Add('1');//kind
        PData.Add(ReturnId(ReturnName(ListBox2.Items.Strings[i])));//員編
        PData.Add(Trim(Edit2.Text));//訊息
        PData.Add(getUserId);//發送者
        ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
        if ReturnID(ExeSPResult) = 'N' then
        BEGIN
          ShowMessage(ReturnName(ExeSPResult));
        end;
        Paramter.Clear;
        PType.Clear;
        RType.Clear;
        PData.Clear;
      end;
      times_log(btnSMSsend.Name,'',getUserId,'');
      Self.Close;
    end
    else
      ShowMessage('請輸入"簡訊發送內容"或"收件人清單"');
  finally
    Paramter.Free;
    PType.Free;
    RType.Free;
    PData.Free;
  end;



end;

procedure TFrmSMSsend.FormShow(Sender: TObject);
VAR
  DOCID :STRING;
begin
  inherited;
  DOCID := '';
  Edit2.Text := send_str;
  ListBox1.Clear;
  ListBox2.Clear;
  ListBox3.Clear;
  ListBox4.Clear;
  EdtSMSGROUP.Text := '';
  CBSMSGROUP.Clear;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select trim(doc_name) as doc_name,trim(member_code) as member_code,trim(phs_no) as phs_no from phs_data order by doc_name');
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    ListBox1.Items.Add(DM.QryTemp.fieldbyname('doc_name').AsString);
    ListBox3.Items.Add(DM.QryTemp.fieldbyname('member_code').AsString);
    ListBox4.Items.Add(DM.QryTemp.fieldbyname('phs_no').AsString);
    DM.QryTemp.Next;
  end;
  //群組Loaded
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('SELECT * FROM EPD_SMS_GROUP WHERE nvl(trim(PHONE_NO),''0'')= ''0'' ' );
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    CBSMSGROUP.Items.Add(Trim(DM.QryTemp.fieldbyname('SMSGROUP').AsString));
    DM.QryTemp.Next;
  end;
  if GROUPNAME<> '' then
    SetCbbitem(CBSMSGROUP,GROUPNAME);
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('SELECT * FROM EPD_SMS_GROUP WHERE SMSGROUP='+qt(GROUPNAME)+' and nvl(trim(PHONE_NO),''0'')<> ''0'' ' );
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    ListBox2.Items.Add(Trim(DM.QryTemp.fieldbyname('USER_NAME').AsString)+'_'+Trim(DM.QryTemp.fieldbyname('USER_ID').AsString)+'_'+Trim(DM.QryTemp.fieldbyname('PHONE_NO').AsString));
    DM.QryTemp.Next;
  end;
  DM.QryTemp.Close;
end;

procedure TFrmSMSsend.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TFrmSMSsend.Button2Click(Sender: TObject);
begin
  inherited;
  ListBox2.Items.Delete(ListBox2.ItemIndex);
end;

procedure TFrmSMSsend.BitBtn3Click(Sender: TObject);
begin
  inherited;
  With ListBox1 Do
    itemindex := Perform(LB_FINDSTRING, ItemIndex,Longint(PChar(Edit1.Text)));
  ListBox3.ItemIndex := ListBox1.ItemIndex;
  ListBox4.ItemIndex := ListBox1.ItemIndex;
  if ListBox1.ItemIndex = -1 then
  begin
    With ListBox3 Do
      itemindex := Perform(LB_FINDSTRING, ItemIndex,Longint(PChar(Edit1.Text)));
    ListBox1.ItemIndex := ListBox3.ItemIndex;
    ListBox4.ItemIndex := ListBox3.ItemIndex;
  end;
  if ListBox3.ItemIndex = -1 then
  begin
    With ListBox4 Do
      itemindex := Perform(LB_FINDSTRING, ItemIndex,Longint(PChar(Edit1.Text)));
    ListBox3.ItemIndex := ListBox4.ItemIndex;
    ListBox1.ItemIndex := ListBox4.ItemIndex;
  end;
end;

procedure TFrmSMSsend.ListBox1Click(Sender: TObject);
begin
  inherited;
  ListBox3.ItemIndex:= ListBox1.ItemIndex;
  ListBox4.ItemIndex:= ListBox1.ItemIndex;
end;

procedure TFrmSMSsend.BitBtn5Click(Sender: TObject);
begin
  inherited;
  DM.QryUpdate.Close;
  DM.QryUpdate.SQL.Clear;
  DM.QryUpdate.SQL.Add('delect EPD_SMS_GROUP WHERE SMSGROUP='+qt(GROUPNAME)+' and user_id='+qt(ReturnId(ReturnName(ListBox2.Items.Strings[ListBox2.ItemIndex]))));
  try
    DM.ADOLink.BeginTrans;
    DM.QryUpdate.ExecSQL;
    DM.ADOLink.CommitTrans;
    ShowMessage('已刪除');
  except
    DM.ADOLink.RollbackTrans;
  end;
end;

procedure TFrmSMSsend.BitBtn1Click(Sender: TObject);
var
  seq : string;
begin
  inherited;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('SELECT seq_no FROM EPD_SMS_GROUP WHERE SMSGROUP='+qt(Trim(CBSMSGROUP.Text))+' and user_id='+qt(ReturnId(ReturnName(ListBox2.Items.Strings[ListBox2.ItemIndex]))));
  //DM.QryTemp.sql.SaveToFile('D:\sms.txt');
  DM.QryTemp.Open;
  if DM.QryTemp.IsEmpty then
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('SELECT max(seq_no) as seq_no FROM EPD_SMS_GROUP ');
    DM.QryTemp.Open;
    seq := IntToStr(DM.QryTemp.fieldbyname('seq_no').AsInteger + 1);
    DM.QryInsert.Close;
    DM.QryInsert.SQL.Clear;
    DM.QryInsert.SQL.Add('insert into EPD_SMS_GROUP (SEQ_NO,SMSGROUP,USER_ID,PHONE_NO,UPD_OPER,UPD_DATE,UPD_TIME,USER_NAME)');
    DM.QryInsert.SQL.Add(' values('+seq+','+qt(trim(CBSMSGROUP.Text))+','+qt(ReturnId(ReturnName(ListBox2.Items.Strings[ListBox2.ItemIndex]))));
    DM.QryInsert.SQL.Add(','+qt(ReturnName(ReturnName(ListBox2.Items.Strings[ListBox2.ItemIndex])))+','+Qt(getUserId)+','+qt(ROCDate(Now,'')));
    DM.QryInsert.SQL.Add(','+qt(ROCTime(Now,''))+','+qt(ReturnId(ListBox2.Items.Strings[ListBox2.ItemIndex]))+')');
    try
      DM.ADOLink.BeginTrans;
      DM.QryInsert.ExecSQL;
      DM.ADOLink.CommitTrans;
      ShowMessage('已加入群組');
    except
      DM.ADOLink.RollbackTrans;
    end;
  end
  else
    ShowMessage('已是群組的成員');
end;

procedure TFrmSMSsend.BitBtn4Click(Sender: TObject);
var
  seq : string;
begin
  inherited;
  if Trim(EdtSMSGROUP.Text) <> '' then
  begin
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Clear;
    DM.QryTemp.SQL.Add('SELECT max(seq_no) as seq_no FROM EPD_SMS_GROUP WHERE SMSGROUP='+qt(Trim(EdtSMSGROUP.Text)));
    DM.QryTemp.Open;
    if DM.QryTemp.fieldbyname('seq_no').AsInteger> 1 then
    begin
      ShowMessage('已有此群組，請另取名稱');
      exit;
    end
    else
    begin
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('SELECT max(seq_no) as seq_no FROM EPD_SMS_GROUP ');
      DM.QryTemp.Open;
      seq := IntToStr(DM.QryTemp.fieldbyname('seq_no').AsInteger + 1);

      DM.QryInsert.Close;
      DM.QryInsert.SQL.Clear;
      DM.QryInsert.SQL.Add('insert into EPD_SMS_GROUP (SEQ_NO,SMSGROUP,USER_ID,PHONE_NO,UPD_OPER,UPD_DATE,UPD_TIME,USER_NAME)');
      DM.QryInsert.SQL.Add(' values('+seq+','+qt(trim(EdtSMSGROUP.Text))+','+qt(ReturnId(ReturnName(ListBox2.Items.Strings[ListBox2.ItemIndex]))));
      DM.QryInsert.SQL.Add(','+qt(ReturnName(ReturnName(ListBox2.Items.Strings[ListBox2.ItemIndex])))+','+Qt(getUserId)+','+qt(ROCDate(Now,'')));
      DM.QryInsert.SQL.Add(','+qt(ROCTime(Now,''))+','+qt(ReturnId(ListBox2.Items.Strings[ListBox2.ItemIndex]))+')');
      try
        DM.ADOLink.BeginTrans;
        DM.QryInsert.ExecSQL;
        DM.ADOLink.CommitTrans;
        ShowMessage('已加入新的群組');
      except
        DM.ADOLink.RollbackTrans;
      end;
    end;
  end
  else
  begin
    ShowMessage('請輸入群組名稱');
    EdtSMSGROUP.SetFocus;
  end;
end;

procedure TFrmSMSsend.CBSMSGROUPChange(Sender: TObject);
begin
  inherited;
  GROUPNAME := Trim(CBSMSGROUP.Text);
  ListBox2.Clear;
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('SELECT * FROM EPD_SMS_GROUP WHERE SMSGROUP='+qt(GROUPNAME)+' and nvl(trim(PHONE_NO),''0'')<> ''0'' ' );
  DM.QryTemp.Open;
  while not DM.QryTemp.Eof do
  begin
    ListBox2.Items.Add(Trim(DM.QryTemp.fieldbyname('USER_NAME').AsString)+'_'+Trim(DM.QryTemp.fieldbyname('USER_ID').AsString)+'_'+Trim(DM.QryTemp.fieldbyname('PHONE_NO').AsString));
    DM.QryTemp.Next;
  end;
end;

end.
