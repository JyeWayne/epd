//FEE_NO OK 20160718

unit Login;

interface

uses                                                                                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Main, StdCtrls, OleCtrls, SHDocVw, ExtCtrls, XPMan, ComCtrls,
  Buttons,IniFiles, jpeg, AppEvnts, Mask, ShellAPI;

type
  TFrmLogin = class(TFrmMain)
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    Panel3: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdtUserID: TEdit;
    EdtUserName: TEdit;
    EdtUserPW: TEdit;
    EdtDept: TEdit;
    BtnLogin: TBitBtn;
    BtnCancle: TBitBtn;
    RichEdit1: TRichEdit;
    Timer1: TTimer;
    ApplicationEvents1: TApplicationEvents;
    Button1: TButton;
    procedure EdtUserIDChange(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure BtnCancleClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    MaxTimes,Gline : Integer;
    newhandle : Thandle;
    Procedure LoadVer;
    procedure DisableProcessWindowsGhosting;
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

uses DBDM, Commfunc, PatList, Global,qrprntr,qrprev, PubPrintMain, MySQLc,
  ADODB, ERsFunc, DB, Pkg;

{$R *.dfm}

procedure TFrmLogin.EdtUserIDChange(Sender: TObject);
var
  docdept,emgdoc,Str :string;
begin
  inherited;
  if EdtUserId.Text ='' then
    BtnLogin.Tag := 0;
  if Length(EdtUserId.Text) < 5 then
    exit;
  with Dm.QrySearch do
  begin
    Close;
    SQL.Clear;
    //20160711增加護理人員的辨識(職稱)
    //SQL.Add('select * from USER_BASIC where USER_ID='+Qt(EdtUserId.Text)+' and Use_flag=''Y''');
    SQL.Add('select a.*,b.job_code from USER_BASIC a,prsn_basic b where a.USER_ID='+Qt(EdtUserId.Text)+' and a.USER_ID=b.emp_code and Use_flag=''Y''');
    open;
    Last;
    First;
    if recordcount =1 then
    begin
      EdtUserName.Text := FieldByName('USER_NAME').AsString;
      EdtUserPW.Hint := Trim(FieldByName('USER_PASSWD').AsString);
      SETUSERPWS(Trim(FieldByName('USER_PASSWD').AsString));
      EdtUserName.Hint := FieldByName('USER_LEVEL').AsString;
      EdtDept.Text := FieldByName('USER_DEPT').AsString;
      EdtDept.Hint := FieldByName('USER_COST').AsString;
      Label1.Hint := FieldByName('job_code').AsString;
      Label2.Hint := FieldByName('USER_APPROVEDDT').AsString;
      EdtUserPW.SetFocus;
    end
    else
    begin
      EdtUserName.Text := '';
      EdtUserPW.Hint := '';
      EdtUserName.Hint := '';
      EdtDept.Text := '';
      EdtDept.Hint := '';
      Label1.Hint :='';
      Label2.Hint :='';
    end;
    Close;
  end;
end;

procedure TFrmLogin.BtnLoginClick(Sender: TObject);
var
  key : Word ;
  iDay,Days : String;
  i : Integer;
  checkdoc,emgdoc,Str, myStr, myParamter: string;

  tmpSql :String;
  ls_chk, ls_psw_msg: String;
begin
  inherited;
  //LoadVer;
  checkdoc := 'N';
  ClearUser;

  //111.01.07 shh ITe 11138 modify 雙和新密碼認證機制
  tmpSql:=getChkSqlStr(3);
  SetParamter(tmpSql,'$UPD_OPER$',Qt(trim(EdtUserID.Text)));
  SetParamter(tmpSql,'$PSW_DESC$',Qt(trim(EdtUserPw.Text)));

  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := tmpSql;
  DM.QryTemp.Open;

  ls_chk := DM.QryTemp.fieldbyname('CHK').AsString;
  ls_psw_msg:= copy(TRIM(ls_chk), 3, length(ls_chk));
  ls_chk := copy(TRIM(ls_chk),1,1);

  if ls_chk = 'U' then
  begin
    //登入成功  需改密碼
    ShowMessage(ls_psw_msg);
    if not Assigned(FrmPKG) then
      FrmPKG := TFrmPKG.Create(Self);

    FrmPKG.user.Caption := EdtUserID.Text;
    FrmPKG.user_n.Caption := trim(EdtUserName.Text);

    try
      FrmPkg.ShowModal;
      if FrmPkg <> nil then
        FrmPkg := nil;
    except
      if FrmPkg <> nil then
        FrmPkg := nil;
    end;

    edtUserPw.Text:='';
    EdtUserID.OnChange(EdtUserID);
    Exit;
  end
  else if ls_chk = 'Y' then
  begin
    //登入成功  do nothing;
  end
  else
  begin
    ShowMessage(ls_psw_msg);
  end;



  //111.01.07 shh ITe 11138 modify 雙和新密碼認證機制
  if ls_chk = 'Y' then
  begin
    if SetUser(EdtUserid.Text,EdtUserName.Text,EdtUserName.Hint,EdtDept.Text,EdtUserPw.Text,EdtDept.Hint,Label1.Hint,Label2.Hint,'') then
    begin

  {if (Trim(edtUserPw.Hint) <>'') and (edtUserPw.Text = EdtUserPw.Hint) then
  begin}
    {if EdtUserName.Hint < '3' then   //登入科別
    begin
      emgdoc := SetSys.ReadString('SYSTEM','EMGDOC','');
      if emgdoc = 'True' then
      begin
        Str := SetSys.ReadString('SYSTEM','DOCDEPT','');
        if str <> '' then
        begin
          while not (Str='') do
          begin
            if trim(EdtDept.Text) = ReturnId(Str) then
              checkdoc := 'Y';
            Str := ReturnName(str);
          end;
          if checkdoc = 'N' then
          begin
            ShowMessage('請使用有急診權限的帳號登入');
            BtnCancleClick(BtnCancle);
            EdtUserID.SetFocus;
            exit;
          end;
        end;
      end;
    end;}
    //111.01.07 shh ITe 11138 modify 雙和新密碼認證機制
    {if SetUser(EdtUserid.Text,EdtUserName.Text,EdtUserName.Hint,EdtDept.Text,EdtUserPw.Text,EdtDept.Hint,Label1.Hint,Label2.Hint,'') then
    begin
      iDay := NullStrTo(SetSys.ReadString('SYSTEM','ISO27001','0'),'0');
      if iDay <> '0' then
      begin
        try
          Days :=  RocDate(now-StrToInt(iDay),'');
          if Days > Trim(Label2.Hint) then
          begin
            ShowMessage('您的密碼已超過['+iday+'天]沒有進行變更'+#10#13+'請變更密碼後再行登入');
            if not Assigned(FrmPKG) then
              FrmPKG := TFrmPKG.Create(Self);

            FrmPKG.user.Caption := EdtUserID.Text;
            FrmPKG.user_n.Caption := trim(EdtUserName.Text);

            try
              FrmPkg.ShowModal;
              if FrmPkg <> nil then
                FrmPkg := nil;
            except
              if FrmPkg <> nil then
                FrmPkg := nil;
            end;
            edtUserPw.Text:='';
            EdtUserID.OnChange(EdtUserID);
            Exit;
          end;
        except
        end;
      end;   }

      //20140113 藥品公告
      myStr := Setsys.ReadString('OTHERSYSTEMLINK', '藥品公告', '');
      myParamter := Setsys.ReadString('PARAMTER', '藥品公告', '');
      comStrRep(mystr);
      comstrRep(myParamter);
      if myStr <> '' then
      begin
        //ShowMessage('藥品公告:myStr:'+mystr+' /myParamter:'+myParamter );
        try
          if WinExecAndWait32(PChar(PChar(myStr) + ' ' + PChar(myParamter)), SW_SHOWNORMAL) = -1 then
          begin
            ShellExecute(Handle, 'open', PChar(myStr), PChar(myParamter), nil, SW_SHOWNORMAL);
          end;
        except
        end;
      end;

      if not Assigned(FrmPatList) then
        FrmPatList := TFrmPatList.Create(Self);
      EdtUserID.SetFocus;
      SETUSERPWS(EdtUserPw.Text);
      Self.Hide;
      if getUserLevel = '1' then
      begin
        key:= VK_RETURN ;
      end;
      FrmPatList.ShowModal;
      FreeAndNil(FrmPatList);
      Self.Show;
    end;
  end
  else
  begin
    BtnLogin.Tag := BtnLogin.Tag +1;
    edtUserPw.Text := '';
    edtUserPw.SetFocus;
    if BtnLogin.Tag >= 3 then
      BtnCancleClick(BtnCancle);
  end;
  DM.QrySearch.Close;
end;

procedure TFrmLogin.BtnCancleClick(Sender: TObject);
begin
  inherited;
  EdtUserId.Text := '';
  EdtUserName.Text := '';
  EdtUserPW.Text := '';
  EdtUserPW.Hint := '';
  EdtDept.Text := '';
  EdtDept.Hint := '';
  BtnLogin.Tag := 0;
  ClearUser;
  BtnCancle.SetFocus;  
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
var
  TempS,str,Str1, substr1 : String;
  Tempsorder : TStringList;
  i, j : integer;
begin
  inherited;
  newHandle := LoadLibrary('FunctionLib.dll');
  Setsys := TIniFile.Create(ExtractFileDir(Application.ExeName)+'/EPDConfig.ini');
  SetSql := TIniFile.Create(ExtractFileDir(Application.ExeName)+'/EPDSqltrs.ini');
  MaxTimes := StrToInt(Setsys.ReadString('SYSTEM','USE TIME','1200'));
  gsSysMsg := SetSys.ReadString('SYSTEM','系統訊息','');
  Temps := SetSys.ReadString('SYSTEM','印表機選項','');
  After_price := SetSys.ReadString('SYSTEM','批價後','');
  security := SetSys.ReadString('SYSTEM','資安處理','');
  MEDCIRDEF := SetSys.ReadString('SYSTEM','MEDCIRDEF','');
  MEDIVCIRDEF := SetSys.ReadString('SYSTEM','MEDIVCIRDEF','');
  WAITINGLOG:= SetSys.ReadString('SYSTEM','WAITINGLOG','');
  Lock_six_months:= SetSys.ReadString('SYSTEM','LOCK_SIX_MONTHS','');  //110.06.23 shh ITe 11138 add 6個月病歷鎖定可控
  if Temps = 'True' then
    ShowPrint := true
  else
    ShowPrint := False;
  SetUseTime(MaxTimes);
  VsDoc := TStringList.Create;
  USE_ER_VSDOC := TStringList.Create;
  Cost := TStringList.Create;
  Dept :=  TStringList.Create;
  Uuser :=  TStringList.Create;
  gsOrderType := TStringList.Create;
  gsCir := TStringList.Create;
  gsPath := TStringList.Create;
  gsXpath := TStringList.Create;//放射部位
  gsLabGroup := TStringList.Create;//檢驗組別
  gsLabSample := TStringList.Create;//檢體
  gsCheckRoom := TStringList.Create;//檢查室
  gsunitDesc :=  TStringList.Create;
  OutList := TstringList.Create;
  casetype := TStringList.Create;
  partcode := TStringList.Create;
  paytype := TStringList.Create;
  doctor := TStringList.Create;
  EPDBED := TStringList.Create;//可用的床號
  EPDAREA:= TStringList.create;
  EDLabGroup:= TStringList.create;//急診檢驗組別
  edCheckRoom := TStringList.create;
  SpecMed := TStringList.create;
  SpecbgMed:= TStringList.create;
  exthsp := TStringList.Create;//離院原因
  epdstatus := tstringlist.Create;
  REPORT_DATA := TStringList.Create;//檢驗報告超標
  EMGDOC := TStringList.Create;
  EMGVSDOC := TStringList.Create;
  Tempsorder := TStringList.Create;
  CheckPat;

  //gsOrderType := StrToList(Setsys.ReadString('SYSTEM','醫囑類型',''));
  statusinlist;
  gsCir.Clear;
  With Dm.QrySearch do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select CIR_CODE from CIR_BASIC ORDER BY CIR_CODE');
    open;
    While not Eof do
    begin
      gsCir.Add(TRIM(FieldByName('CIR_CODE').AsString));
      Next;
    end;
    Close;
    SQL.Clear;
    SQL.Add('Select PATH_CODE,PATH_DESC from PATH_BASIC ORDER BY PATH_CODE');
    OPEN;
    While not Eof do
    begin
      gsPath.Add(Trim(FieldByName('Path_code').AsString)+'_'+Trim(FieldByName('PATH_DESC').AsString));
      Next;
    end;
    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED='+Qt('R2')+' Order by Code_one');
    Open;
    while not Eof do
    begin
      gsXpath.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('Code_oneName').AsString)+' Order by Code_one');
      Next;
    end;
    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED='+Qt('L1')+' Order by Code_one');
    Open;
    while not Eof do
    begin
      gsLabGroup.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('Code_oneName').AsString));
      Next;
    end;
    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED='+Qt('L2')+' Order by Code_one');
    Open;
    while not Eof do
    begin
      gsLabSample.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('Code_oneName').AsString));
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED='+Qt('C1')+' Order by Code_one');
    Open;
    while not Eof do
    begin
      gsCheckRoom.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('Code_oneName').AsString));
      Next;
    end;

    Temps := '';
    Temps := SetSys.ReadString('SYSTEM','急診使用檢查室','');
    if Temps <> '' then
    begin
      Temps := Temps+';';
      Tempsorder := Strtolist(trim(Temps));
      for i := 0 to Tempsorder.Count -1 do
      begin
        for j := 0 to gsCheckRoom.Count -1 do
          if Trim(Tempsorder.Strings[i]) = Trim(ReturnID(gsCheckRoom.Strings[j])) then
          begin
            edCheckRoom.Add(gsCheckRoom.Strings[j]);
          end;
      end;
    end;
    {Temps := SetSys.ReadString('SYSTEM','急診使用檢查室','');
    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED='+Qt('C1')+' and Trim(Code_one) in ('+Qts(Temps)+') Order by Code_one');
    Open;
    while not Eof do
    begin
      edCheckRoom.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('Code_oneName').AsString));
      Next;
    end; }

    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED='+Qt('T1')+' Order by Code_one');
    Open;
    while not Eof do
    begin
      gsOrderType.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('Code_oneName').AsString));
      Next;
    end;
    //ShowMessage(gsOrderType.Text);
    Close;
    SQL.Clear;
    SQL.Add('Select Code_one,Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED='+Qt('M2')+' Order by Code_one');
    Open;
    while not Eof do
    begin
      gsUnitDesc.Add(Trim(FieldByName('Code_one').AsString)+'_'+Trim(FieldByName('Code_oneName').AsString));
      Next;
    end;
    Close;
    SQL.Clear;
    SQL.Add('Select trim(Dept_code) as Dept_code,trim(smpl_desc) as smpl_desc from Dept_BASIC ');
    Open;
    while not Eof do
    begin
      Dept.Add(Trim(FieldByName('Dept_code').AsString)+'_'+Trim(FieldByName('smpl_desc').AsString));
      Next;
    end;

    SQL.Clear;
    SQL.Add('select * from printer_basic where pr_code='+Qt('IPD'));
    open;
    IPDUsePrinter := NullStrTo(Trim(FieldByName('PR_NAME').AsString),'LOCAL_A4');
    Close;

    Close;
    SQL.Clear;
    SQL.Add(SetSql.ReadString('SYSTIME','CASETYPE',''));
    Open;
    while not Eof do
    begin
      casetype.Add(DM.QrySearch.FIELDBYNAME('code_desc').AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add(SetSql.ReadString('SYSTIME','PARTCODE',''));
    Open;
    while not Eof do
    begin
      partcode.Add(DM.QrySearch.FIELDBYNAME('code_desc').AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('select trim(code_no)||''_''||trim(code_desc) code_desc from V_ORDER_TYPE');
    Open;
    while not Eof do
    begin
      paytype.Add(DM.QrySearch.FIELDBYNAME('code_desc').AsString);
      Next;
    end;

    //取醫師清單
    //清單排除醫師
    substr1 := '';
    str :=  SetSys.ReadString('SYSTEM','NOTDOC','');
    if str <> '' then
    begin
      while not (Str='') do
      begin
        substr1 := substr1+ReturnId(Str)+';';
        Str := ReturnName(str);
      end;
    end;
    if trim(substr1) <> '' then
    begin
      substr1 := copy(substr1,1,length(substr1)-1);
      substr1 := 'and user_id not in('+Qts(substr1)+') order by user_id';
    end;
    {USE_ER_VSDOC : 設定"科別"的科內主治醫師
     VsDoc        : 全院的主治醫師
     EMGVSDOC     : 設定"DOCDEPT"的科內主治醫師
     EMGDOC       : 設定"EMGDOGDEPT"加'86'科別的科內主治醫師
     doctor       : 全院主治、住院醫師
    }
    //站存完診設定科別所有主治醫師清單
    Str1 := '';
    str :=  SetSys.ReadString('SYSTEM','科別','');
    if str <> '' then
    begin
      while not (Str='') do
      begin
        Str1 := Str1+ReturnId(Str)+';';
        Str := ReturnName(str);
      end;
    end;
    Close;
    SQL.Clear;
    SQL.Add('select trim(user_id)||''_''||trim(user_name) as doc_desc from user_basic where user_level=''1'' and use_flag=''Y'' and USER_DEPT in('+Qts(Str1)+') '+substr1);
    Dm.QrySearch.sql.Text;
    Open;
    while not Eof do
    begin
      USE_ER_VSDOC.Add(DM.QrySearch.FIELDBYNAME('doc_desc').AsString);
      Next;
    end;

    Close;
    SQL.Clear;                                                                                                                // and user_cost=''3800''
    SQL.Add('select trim(user_id)||''_''||trim(user_name) as doc_desc from user_basic where user_level=''1'' and use_flag=''Y'' '+substr1);
    Dm.QrySearch.sql.Text;
    Open;
    while not Eof do
    begin
      VsDoc.Add(DM.QrySearch.FIELDBYNAME('doc_desc').AsString);
      Next;
    end;

    Str1 := '';
    str :=  SetSys.ReadString('SYSTEM','DOCDEPT','');
    if str <> '' then
    begin
      while not (Str='') do
      begin
        Str1 := Str1+ReturnId(Str)+';';
        Str := ReturnName(str);
      end;
    end;
    Close;
    SQL.Clear;
    SQL.Add('select trim(user_id)||''_''||trim(user_name) as doc_desc from user_basic where user_level=''1'' and use_flag=''Y'' and USER_DEPT in('+Qts(Str1)+') '+substr1);
    Dm.QrySearch.sql.Text;
    Open;
    while not Eof do
    begin
      EMGVSDOC.Add(DM.QrySearch.FIELDBYNAME('doc_desc').AsString);
      Next;
    end;

    //急診醫師
    Str1 := '';
    str :=  SetSys.ReadString('SYSTEM','EMGDOGDEPT','');
    if str <> '' then
    begin
      while not (Str='') do
      begin
        Str1 := Str1+ReturnId(Str)+';';
        Str := ReturnName(str);
      end;
    end
    ELSE
      Str1 := '86;';
    Close;
    SQL.Clear;
    SQL.Add('select trim(user_id)||''_''||trim(user_name) as doc_desc from user_basic where use_flag=''Y'' and USER_DEPT in('+Qts(Str1)+') AND USER_LEVEL < ''5'' '+substr1);
    Dm.QrySearch.sql.Text;
    Open;
    while not Eof do
    begin
      EMGDOC.Add(DM.QrySearch.FIELDBYNAME('doc_desc').AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('select trim(user_id)||''_''||trim(user_name) as doc_desc from user_basic where user_level in(''1'',''2'') and use_flag=''Y'' '+substr1);
    Dm.QrySearch.sql.Text;
    Open;
    while not Eof do
    begin
      doctor.Add(DM.QrySearch.FIELDBYNAME('doc_desc').AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('select trim(user_id)||''_''||trim(user_name) as doc_desc from user_basic ');
    Open;
    while not Eof do
    begin
      Uuser.Add(DM.QrySearch.FIELDBYNAME('doc_desc').AsString);
      Next;
    end;


    Close;
    SQL.Clear;
    SQL.Add('select trim(area_name)||''_''||trim(area_no) as area_name from area_basic where area_no in(select area_no from bed_area) order by area_name');
    Open;
    while not Eof do
    begin
      EPDAREA.Add(DM.QrySearch.FIELDBYNAME('area_name').AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Text := 'select to_char(add_months(sysdate,-6),''yyyymmdd'')-19110000 as bdate from dual';
    Open;
    if not IsEmpty then
      Minus_six_months_date := DM.QrySearch.fieldbyname('bdate').AsString;


    Temps := '';
    Temps := SetSys.ReadString('SYSTEM','急診使用組別','');
    if Temps <> '' then
    begin
      Temps := Temps+';';
      Tempsorder := Strtolist(trim(Temps));
      for i := 0 to Tempsorder.Count -1 do
      begin
        for j := 0 to gsLabGroup.Count -1 do
          if Trim(Tempsorder.Strings[i]) = Trim(ReturnID(gsLabGroup.Strings[j])) then
          begin
            EDLabGroup.Add(gsLabGroup.Strings[j]);
          end;
      end;
    end;

    Close;
    SQL.Clear;
    SQL.Add('select trim(med_code)||''_''||trim(font_color_r)||''_''||trim(font_color_g)||''_''||trim(font_color_b) as med from SPEC_MED where MED_KIND=''01'' and CNCL_FLAG=''N'' ');
    Open;
    while not Eof do
    begin
      SpecMed.Add(DM.QrySearch.FIELDBYNAME('med').AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('select trim(med_code)||''_''||trim(bg_color_r)||''_''||trim(bg_color_g)||''_''||trim(bg_color_b) as med from SPEC_MED where MED_KIND=''05'' and CNCL_FLAG=''N'' ');
    Open;
    while not Eof do
    begin
      SpecbgMed.Add(DM.QrySearch.FIELDBYNAME('med').AsString);
      Next;
    end;

    Close;
    SQL.Clear;
    SQL.Add('select trim(code_no)||''_''||trim(code_desc) as aa from code_dtl where code_type=''12'' and upd_oper<>''0'' ');
    Open;
    while not Eof do
    begin
      exthsp.Add(DM.QrySearch.FIELDBYNAME('aa').AsString);
      Next;
    end;
  end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
var
  creation, lastaccess, lastwrite: TDateTime;
  FOS : TSHFileOpStruct;
  FromNames:string;
begin
  inherited;
  LoadVer;//1

  WebBrowser1.Navigate(Setsys.ReadString('WEB','登入網頁',''));
  BtnCancleClick(BtnCancle);
  RegisterPreviewClass(TQREvenPreviewInterface);
  DisableProcessWindowsGhosting;
  if Label1.Tag = 0 then
  begin
    If (ParamStr(1) <> '') And (ParamStr(2) <> '') and (EdtUserPW.Tag = 0) Then
    Begin
      EdtUserID.Text := Trim(ParamStr(1));
      EdtUserPW.Text := Trim(ParamStr(2));
      Label1.Tag := 1;
      BtnLogin.SetFocus;
    End
    else
    begin
      clearUser();
      Clearpat();
    end
  end
  else
  begin
    clearUser();
    Clearpat();
  end;
  DELETEFILE(ExtractFileDir(Application.ExeName)+'\Count.ini');
  pkgdtl:= False;
  //Image1.Picture.LoadFromFile('http://images3.wikia.nocookie.net/__cb20090312162103/lostpedia/images/5/52/6''''eren.jpg');
  try
    GetFileDate(ExtractFileDir(Application.ExeName)+'\SQL_Waiting_log.txt', creation, lastaccess, lastwrite);
    if StrToInt(FormatDateTime('YYYYMMDD',creation)) < StrToInt(FormatDateTime('YYYYMMDD', Now-2)) then
      DeleteFile(ExtractFileDir(Application.ExeName)+'\SQL_Waiting_log.txt');

    GetFileDate(ExtractFileDir(Application.ExeName)+'\ERS_ERROR_log.txt', creation, lastaccess, lastwrite);
    if StrToInt(FormatDateTime('YYYYMMDD',creation)) < StrToInt(FormatDateTime('YYYYMMDD', Now-30)) then
      DeleteFile(ExtractFileDir(Application.ExeName)+'\ERS_ERROR_log.txt');

    //刪除所有的PDF檔
    FillChar(FOS, Sizeof(TShFileOpStruct), 0);
    FromNames := ExtractFileDir(Application.ExeName)+'\PDF\*.*'+#0;
    WITH FOS DO
    Begin
      Wnd := Self.Handle;
      wFunc := FO_DELETE;
      pFrom := PChar(FromNames);
      fFlags := FOF_NoConfirmation;
    End;
    ShFileOperation(FOS);

    FrmLogin.Caption := FrmLogin.Caption + DM.gsTitle;
  except

  end;


end;

procedure TFrmLogin.Timer1Timer(Sender: TObject);
Var
  newPoint: TPoint;
begin
  inherited;
  Getcursorpos(newpoint);
  If (newpoint.x <> myPoint.x) Or (newpoint.y <> myPoint.y) Then
  Begin
    SetUseTime(maxtimes);
    myPoint := newPoint;
  End
  else
  begin
    SetUseTime(GetUseTime -1);
  end;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  try
    DM.ADOLink.Connected := False;
    Action := cafree;
  except
  end;
end;

procedure TFrmLogin.FormDestroy(Sender: TObject);
begin
  inherited;
  try
    FrmLogin := nil;
  except
  end;
end;

procedure TFrmLogin.LoadVer;
var
  FileStr : String;
begin
  //if MyIP <>'10.15.2.97' then
  if MyIP <>'10.108.2.41' then
  begin
    With DM.QryTemp do
    begin
      FileStr := SetSys.ReadString('SYSTEM','PATCH','');
      Close;
      SQL.Clear;
      SQL.Add('select * from ipd_vision where KIND=''E''');
      open;
      RichEdit1.Lines.Text := FieldByName('Message').AsString;
      if EPD_ver <> Trim(FieldByName('VER').AsString) then
      begin
        Close;
        comStrRep(FileStr);
        WinExec(PChar(ExtractFileDir(Application.ExeName)+'/Leader.exe'),SW_SHOWNORMAL	);
        self.Close;
      end;
    end;
  end;
end;

procedure TFrmLogin.Timer2Timer(Sender: TObject);
begin
  inherited;
  if FrmLogin.Visible then
  begin
    if Gline = RichEdit1.Lines.Count-4 then
    begin
      GLine := 0 ;
      RichEdit1.Perform(WM_VSCROLL,SB_TOP ,0);
    end
    else
    begin
      RichEdit1.Perform(WM_VSCROLL,SB_LINEDOWN ,0);
      Inc(Gline);
    end;
  end;
end;

procedure TFrmLogin.ApplicationEvents1Exception(Sender: TObject;
  E: Exception);
begin
  inherited;
  sql_time_log('Eoutofmemory:',E.Message);
  if E is EOutOfMemory then
  begin
    ShowMessage('記憶體存取錯誤!!');
    Application.Terminate;
  end;
end;

procedure TFrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  try
    CanClose := True;
    freelibrary(newHandle);
  except
  end;
end;

procedure TFrmLogin.DisableProcessWindowsGhosting;
var
  DisableProcessWindowsGhostingProc: procedure;
begin
  DisableProcessWindowsGhostingProc := GetProcAddress(
    GetModuleHandle('user32.dll'),'DisableProcessWindowsGhosting');
  if Assigned(DisableProcessWindowsGhostingProc) then
    DisableProcessWindowsGhostingProc;
end;

procedure TFrmLogin.Button1Click(Sender: TObject);
begin
  inherited;
ShowMessage(dateformat(5,Now-180));
end;

end.
