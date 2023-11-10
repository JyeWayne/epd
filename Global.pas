unit Global;

interface
uses MyUser,Classes,IniFiles,Controls,SysUtils,Windows, SHDocVw, Variants, ActiveX; //20121114
var
  doctor,VsDoc,Cost,Dept,Uuser,gsOrderType,gsCir,gsPath,USE_ER_VSDOC:TStringList;
  //人員及藥品使用
  gsXpath : TStringList;//放射部位
  gsLabGroup : TStringList;//檢驗組別
  gsLabSample : TStringList;//檢體
  gsCheckRoom : TStringList;//檢查室
  edCheckRoom : TStringList;
  OutList : TStringList;
  gsunitDesc : TStringList;//單位
  casetype: TStringList; //案件類別
  partcode: TStringList; //部分負擔
  paytype: TStringList; //給付類別
  EPDBED : TStringList; //床位
  EPDAREA: TStringList; //區域
  EDLabGroup : TStringList;
  SpecMed : tstringlist;//高危用藥警示
  SpecbgMed : tstringlist;//高危用藥警示
  exthsp : tstringlist;//離院原因
  epdstatus : tstringlist;//病人狀態
  REPORT_DATA: TStringList;//檢驗報告超標
  EMGDOC : TStringList;//急診醫師
  EMGVSDOC: TStringList;//急診含科別主治
  SetSys : TIniFile;
  SetSql : TIniFile;
  Transf : TInifile;
  myDate : TDate;
  myTime : TTime;
  DateTimeFlag, DateResult, DateIsNull, pkgdtl, rdonly, EMRPrint_EVERY_TIME, DONOT_PRINT_PAPER : Boolean;
  userTime : Integer;
  myPoint : Tpoint;
  IPDUsePrinter,After_price,WAITINGLOG: String;
  gsSysMsg,tragenus,cvaBP,SpO2,pulse,GCS,security,MEDCIRDEF,MEDIVCIRDEF,GSAGE : String;
  HasHRR,NPEnter : String; //20121114,專助、資深護理師進入選擇
  hascons: string;//有會診資料
  GMStream: TMemoryStream;//繪圖
  icdchangea:string;//icd9轉換ICD10flag=N:icd9;A:icd9 and icd10;Y:icd10
  Minus_six_months_date: string;//20160712減六個月的日期處理fee_no衝到的問題，用fee_no沒有opd_date的問題
  Lock_six_months: string; //110.06.23 shh ITe 11138 add 6個月病歷鎖定設定可控

  procedure CheckUser;
  function SetUser(id,name,level,dept,pwd,Cost,Pwd2,BDate,idno : string): Boolean;
  Procedure ClearUser();
  function getUserId(): String; //使用者帳號
  function getUserName(): String; //使用者名稱
  Function GetUserDept():String; //使用者科別
  Function GetUserPW():String;  //使用者密碼
  Function GetUserPw2 : String;
  function GetUserLevel():String;//
  function getUserIdno(): string;

  Procedure CheckPat;
  Function SetPat(chrno,feeno,idno,bedno,sex,dept,Epddate,Epdtime,cost,Birthdate,patname,patid,ACType,cpddate,shiftno,deptRoom,opdstatus : String): Boolean;
  Procedure ClearPat;
  function GetChrNo : String;
  function GetFeeNo : String;
  function GetIdNo : String;
  function GetBedNo : String;
  function Getsex01 : String;
  function GetPatDept : String;
  function GetEpdDate : String;
  function GetEpdTime : String;
  function GetCost : String;
  function GetBirth : String;
  function GetPatName : String;
  function GetPatId : String;
  function GetACType : String;
  function GetCPD_DATE : String;
  function Getshiftno : string;
  function GetdeptRoom : string;
  function Getopdstatus : string;

  procedure setvsidno(Value:string);
  procedure setvscode(Value:string);
  procedure setvsfeatcode(Value:string);
  procedure setpartid(Value:string);
  procedure Setorderdoc(Value:string);
  procedure Setpatweight(Value:string);
  PROCEDURE SetSheet(value: string);
  PROCEDURE SetICD91(value: string);
  PROCEDURE SetICD92(value: string);
  PROCEDURE SetICD93(value: string);
  PROCEDURE SetCONMAJOR(value: string);
  PROCEDURE SetCONSTR1(value: string);
  PROCEDURE SetCONSTR2(value: string);
  PROCEDURE SetCONDEPT(value: string);
  PROCEDURE SetCONCLA(value: string);
  PROCEDURE SetCLINIC(value: string);
  PROCEDURE SetPrtcnt(value: string);
  PROCEDURE SetPCHRNOTOINT(value: string);
  PROCEDURE SETMAJORTYPE(value: string);
  PROCEDURE SETUSERPWS(value: string);

  function Getvsidno :string;
  function GETUSERPWS : string;
  function GetVsCode : string;
  function Getvsfeatcode : string;
  function getorderdoc : string;
  function Getpartid : string;
  function Getpatweight : string;
  function GetSheet : string;
  function GetICD91 : string;
  function GetICD92 : string;
  function GetICD93 : string;
  function GetCONMAJOR : string;
  function GetCONSTR1 : string;
  function GetCONSTR2 : string;
  function GetCONDEPT : string;
  function GetCONCLA : string;
  FUNCTION GETCLINIC : STRING;
  FUNCTION GETPrtcnt : STRING;
  FUNCTION GETPCHRNOTOINT : STRING;
  FUNCTION GETMAJORTYPE : STRING;
  
  function HavePat : Boolean;
  Procedure comStrRep(var mystr:String);
  Procedure ComStrRepParam(Var myStr:String;FeeCode:String);
  function SexType(Sex : String):String;
  procedure setUseTime(i : Integer);
  function GetUseTime():Integer;
  function GetDeptName(sDept:String):String;
  FUNCTION GETDOCNAME(DOC_CODE:STRING):STRING;
  function getLabSamplename(code:string):string;
  function getchkroomName(code:string):string;
  function getexthospName(code:string):string;
  function Actypedesc(Ac: string):string;//民國、民國前
  procedure CallWebPost(vUrl : String; vParams : TStringlist);  //20121114


Const
  //EPD_Ver = 'TMUEDV3.0.1.6';
  //EPD_Ver = 'TMUEDV3.0.1.6.1101104.01';  //線上版序
  //EPD_Ver = 'TMUEDV3.0.1.6.1110118.01';  //新版序
  EPD_Ver = 'TMUEDV3.0.1.6.1110303.01';  //新版序



implementation

uses Commfunc;
var
  User : TUser;
  Pat : TPat;

procedure CheckUser;
begin
  if not Assigned(User) then
    User := TUser.Create;
end;
function SetUser(id,name,level,dept,pwd ,Cost,Pwd2,BDate,idno : string): Boolean;
begin
  CheckUser;
  SetUser := User.SetUser(id,name,level,dept,pwd,cost,Pwd2,BDate,idno);
end;
Procedure ClearUser();
begin
  CheckUser;
  User.Clear;
end;
function getUserId(): String;
begin
  CheckUser;
  getUserId:= user.GetUserID ;
end;
function getUserName(): String;
begin
  CheckUser;
  getUserName:= user.GetUserName;
end;
Function GetUserDept():String;
begin
  CheckUser;
  GetUserDept := user.GetUserDept;
end;
Function GetUserPW():String;
begin
  CheckUser;
  GetUserPW := User.GetUserPW;
end;
Function GetUserPW2():String;
begin
  CheckUser;
  if TRim(User.GetUserPw2) = '' then
    GetUserPW2 := User.GetUserPW
  else
    GetUserPW2 := User.GetUserPw2;
end;
Function GetUserLevel():String;
begin
  CheckUser;
  GetUserLevel := User.GetUserLevel;
end;
function getUserIdno(): string;
begin
  CheckUser;
  getUserIdno := User.getUserIdno;
end;

Procedure CheckPat;
begin
  if not Assigned(Pat) then
    Pat := TPat.Create;
end;
Function SetPat(chrno,feeno,idno,bedno,sex,dept,Epddate,Epdtime,cost,Birthdate,patname,patid,ACType,cpddate,shiftno,deptRoom,opdstatus : String): Boolean;
begin
  SetPat := Pat.SetPat(chrno,feeno,idno,bedno,sex,dept,Epddate,Epdtime,cost,Birthdate,patname,patid,ACType,cpddate,shiftno,deptRoom,opdstatus);
end;
Procedure ClearPat;
begin
  Pat.Clear;
end;
function GetChrNo : String;
begin
  GetChrNo := Pat.GetChrNo;
end;
function GetFeeNo : String;
begin
  GetFeeNo := Pat.GetFeeNo;
end;
function GetIdNo : String;
begin
  GetIdNo := Pat.GetIdNo;
end;
function GetBedNo : String;
begin
  GetBedNo := Pat.GetBedNo;
end;
function Getsex01 : String;
begin
  Getsex01 := Pat.Getsex01;
end;
function GetPatDept : String;
begin
  GetPatDept := Pat.GetPatDept;
end;
function GetEpdDate : String;
begin
  GetEpdDate := Pat.GetEpdDate;
end;
function GetEpdTime : String;
begin
  GetEpdTime := Pat.GetEpdTime;
end;
function GetCost : String;
begin
  GetCost := Pat.GetCost;
end;
function GetBirth : String;
begin
  GetBirth := Pat.GetBirth;
end;
function GetPatName : String;
begin
  GetPatName := Pat.GetPatName;
end;
function GetPatId : String;
begin
  GetPatId := Pat.GetPatId;
end;

function GetACType : String;
begin
  GetACType := Pat.GetACType;
end;

function GetCPD_DATE : String;
begin
  GetCPD_DATE := Pat.CPD_DATE;
end;

function Getshiftno : string;
begin
  Getshiftno := pat.Getshiftno;
end;
function Getopdstatus : string;
begin
  Getopdstatus := pat.Getopdstatus;
end;

function GetdeptRoom : string;
begin
  GetdeptRoom := pat.GetdeptRoom;
end;

function HavePat : Boolean;
begin
  HavePat := Pat.HvaePat;
end;

procedure setvsidno(Value:string);
begin
  Pat.Getvsidno := Value;
end;

procedure setvscode(Value:string);
begin
  pat.GetVsCode := value;
end;

procedure setvsfeatcode(Value:string);
begin
  Pat.Getvsfeatcode := value;
end;
procedure setpartid(Value:string);
begin
  pat.Getpartid := value;
end;

procedure setorderdoc(Value:string);
begin
  pat.Getorderdoc := value;
end;

procedure Setpatweight(Value:string);
begin
  pat.Getpatweight := value;
end;

PROCEDURE SetSheet(value: string);
begin
  SHEETNO := value;
end;

PROCEDURE SetICD91(value: string);
begin
  ICD91 := value;
end;

PROCEDURE SetICD92(value: string);
begin
  ICD92 := value;
end;

PROCEDURE SetICD93(value: string);
begin
  ICD93 := value;
end;

PROCEDURE SetCONMAJOR(value: string);
begin
  CONMAJOR := value;
end;
PROCEDURE SetCONSTR1(value: string);
begin
  CONSTR1 := value;
end;
PROCEDURE SetCONSTR2(value: string);
begin
  CONSTR2 := value;
end;
PROCEDURE SetCONDEPT(value: string);
begin
  CONDEPT := value;
end;
PROCEDURE SetCONCLA(value: string);
begin
  CONCLA := value;
end;

PROCEDURE SetCLINIC(value: string);
BEGIN
  CLINIC := value;
END;

PROCEDURE SetPrtcnt(value: string);
begin
  Prtcnt := value;
end;

PROCEDURE SetPCHRNOTOINT(value: string);
begin
  PCHRNOTOINT := value;
end;

PROCEDURE SETMAJORTYPE(value: string);
BEGIN
  MAJORTYPE := value;
END;

PROCEDURE SETUSERPWS(value: string);
BEGIN
  USERPWS := value;
END;

function GetVsidno : string;
begin
  result := Pat.GetVsidno;
end;

function GETUSERPWS : string;
begin
  result := USERPWS;
end;

function GetVsCode : string;
begin
  result := Pat.GetVsCode;
end;

function Getvsfeatcode : string;
begin
  result := Pat.Getvsfeatcode;
end;

function Getpartid : string;
begin
  Result := pat.Getpartid;
end;

function Getpatweight : string;
begin
  Result := pat.Getpatweight;
end;

function getorderdoc : string;
begin
  Result := pat.Getorderdoc;
end;

function GetSheet : string;
begin
  Result := SHEETNO;
end;

function GetICD91 : string;
begin
  Result := ICD91;
end;

function GetICD92 : string;
begin
  Result := ICD92;
end;

function GetICD93 : string;
begin
  Result := ICD93;
end;

function GetCONMAJOR : string;
begin
  Result := CONMAJOR;
end;
function GetCONSTR1 : string;
begin
  Result := CONSTR1;
end;
function GetCONSTR2 : string;
begin
  Result := CONSTR2;
end;
function GetCONDEPT : string;
begin
  Result := CONDEPT;
end;
function GetCONCLA : string;
begin
  Result := CONCLA;
end;
FUNCTION GETCLINIC : STRING;
BEGIN
  Result := CLINIC;
END;
FUNCTION GETPrtcnt : STRING;
BEGIN
  Result := Prtcnt;
END;
FUNCTION GETPCHRNOTOINT : STRING;
BEGIN
  Result := PCHRNOTOINT;
END;

FUNCTION GETMAJORTYPE : STRING;
BEGIN
  Result := MAJORTYPE;
END;
Procedure comStrRep(var mystr:String);
begin                                     
  mystr := StringReplace(mystr,'$+USERID+$',GETUSERID,[rfReplaceAll]);     //使用者代碼
  mystr := StringReplace(mystr,'$+USERPWS+$',GETUSERPWS,[rfReplaceAll]);    //使用者密碼
  mystr := StringReplace(mystr,'$+USERNAME+$',GETUSERNAME,[rfReplaceAll]); //使用者名稱
  mystr := StringReplace(mystr,'$+USERDEPT+$',GETUSERDEPT,[rfReplaceAll]); //使用者科別
  mystr := StringReplace(mystr,'$+PATNAME+$',GETPATNAME,[rfReplaceAll]);   //病人名稱
  mystr := StringReplace(mystr,'$+PATCHRNO+$',GETCHRNO,[rfReplaceAll]);    //病歷號
  mystr := StringReplace(mystr,'$+PATIDNO+$',GETIDNO,[rfReplaceAll]);      //身分證字號
  mystr := StringReplace(mystr,'$+PATFEENO+$',GETFEENO,[rfReplaceAll]);    //批價號碼
  mystr := StringReplace(mystr,'$+PATVSCODE+$',GetVsCode,[rfReplaceAll]);  //主治醫師
  mystr := StringReplace(mystr,'$+SHEETNO+$',GetSheet,[rfReplaceAll]);     //序號
  mystr := StringReplace(mystr,'$+ORDERDOC+$',getUserId,[rfReplaceAll]);   //開單醫師
  mystr := StringReplace(mystr,'$+ICD91+$',GetICD91,[rfReplaceAll]);       //ICD9_1
  mystr := StringReplace(mystr,'$+ICD92+$',GetICD92,[rfReplaceAll]);       //ICD9_2
  mystr := StringReplace(mystr,'$+ICD93+$',GetICD93,[rfReplaceAll]);       //ICD9_3
  mystr := StringReplace(mystr,'$+CONMAJOR+$',GetCONMAJOR,[rfReplaceAll]); //會診重症類別
  mystr := StringReplace(mystr,'$+CONSTR1+$',GetCONSTR1,[rfReplaceAll]);   //會診片語1
  mystr := StringReplace(mystr,'$+CONSTR2+$',GetCONSTR2,[rfReplaceAll]);   //會診片語2
  mystr := StringReplace(mystr,'$+CONDEPT+$',GetCONDEPT,[rfReplaceAll]);   //會診科別
  mystr := StringReplace(mystr,'$+CONCLA+$',GetCONCLA,[rfReplaceAll]);     //會診類別
  mystr := StringReplace(mystr,'$+CLINIC+$',GETCLINIC,[rfReplaceAll]);     //診別
  mystr := StringReplace(mystr,'$+Prtcnt+$',GETPrtcnt,[rfReplaceAll]);     //列印份數
  mystr := StringReplace(mystr,'$+PCHRNOTOINT+$',GETPCHRNOTOINT,[rfReplaceAll]);    //病歷號前去零
  mystr := StringReplace(mystr,'$MAJORTYPE$',GETMAJORTYPE,[rfReplaceAll]); //病歷號前去零
  mystr := StringReplace(mystr,'$+EPDDATE+$',GetEpdDate,[rfReplaceAll]);   //掛號日期

end;
Procedure ComStrRepParam(var mystr:String;FeeCode:string);
begin
  mystr := StringReplace(mystr,'$+FEECODE+$',FeeCode,[rfReplaceAll]); //使用者代碼
end;
function SexType(Sex:String):String;
begin
  if Sex ='0' then
    SexType := '女'
  else if Sex ='1' then
    SexType := '男'
  else
    SexType := '不明';
end;

function Actypedesc(Ac: string):string;
begin
  if Ac = '-' then
    Result := '民國前'
  else
    Result := '民國';
end;

procedure SetUseTime(i : Integer);
begin
  userTime := i ;
end;
function GetUseTime():Integer;
begin
  GetUseTime := userTime;
end;

function GetDeptName(sDept:String):String;
begin
  try
    IF SetCbbitem_(Dept,trim(sDept))<> -1 THEN
    GetDeptName := ReTurnName(Dept.Strings[SetCbbItem_(Dept,trim(sDept))]);
  except
    GetDeptName :='';
  end;
end;

FUNCTION GETDOCNAME(DOC_CODE:STRING):STRING;
begin
  try
    IF SetCbbitem_(Uuser,trim(DOC_CODE))<> -1 THEN
    GETDOCNAME := ReTurnName(Uuser.Strings[SetCbbItem_(Uuser,trim(DOC_CODE))]);
  except
    GETDOCNAME :='';
  end;
end;

function getLabSamplename(code:string):string;
begin
  try
    IF SetCbbitem_(gsLabSample,trim(code))<> -1 THEN
    getLabSamplename := ReTurnName(gsLabSample.Strings[SetCbbItem_(gsLabSample,trim(code))]);
  except
    getLabSamplename :='';
  end;
end;

function getchkRoomName(code:string):string;
begin
  try
    IF SetCbbitem_(gsCheckRoom,trim(code))<> -1 THEN
      getchkRoomName := ReTurnName(gsCheckRoom.Strings[SetCbbItem_(gsCheckRoom,trim(code))])
    ELSE
      getchkRoomName := code;
  except
    getchkRoomName := code;
  end;
end;

function getexthospName(code:string):string;
Begin
  try
    IF SetCbbitem_(exthsp,trim(code))<> -1 THEN
      getexthospName := ReTurnName(exthsp.Strings[SetCbbItem_(exthsp,trim(code))])
    ELSE
      getexthospName := code;
  except
    getexthospName := code;
  end;
End;

//20121114 start
procedure CallWebPost(vUrl : String; vParams : TStringlist);
  function StringToPostData(const Value: string): OleVariant;
  begin
    // 把 Post Dtat (String) 轉成 IE 所需要的格式 VarArray
    Result := Unassigned;
    if Value <> '' then
    begin
      Result := VarArrayCreate([0, Length(Value) - 1], varByte);
      Move(Pointer(Value)^, VarArrayLock(Result)^, Length(Value));
      VarArrayUnlock(Result);
    end;
  end;
var
  IE: TInternetExplorer; //要use SHDocVw
  vFlag, vFrame, vPost, vHeader: OleVariant;
  ls_Post : String;
  li_i : integer;
begin
  CoInitialize(nil);
  IE := TInternetExplorer.Create(nil);
  try
    // 開啟IE並顯示
    IE.Visible := true;
    vFlag := navBrowserBar;
    // Post String
    for li_i := 0 to vParams.Count - 1 do
    begin
      ls_Post := ls_Post + vParams[li_i] + '&';
    end;
    vPost := StringToPostData(ls_Post);
    vHeader := 'Content-Type: application/x-www-form-urlencoded' + #10#13;
    IE.Navigate( vUrl, vFlag, vFrame, vPost, vHeader);
  finally
    IE.ToolBar := 0;  //關閉toolbar
    IE.Free;
    CoUnInitialize;
  end;
end;
//20121114 end

end.
