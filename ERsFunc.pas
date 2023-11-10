unit ERsFunc;

interface

uses dateutils, ComCtrls, Classes, Math, Windows, Grids, ADODB, Messages, Forms, Dialogs,
     Controls, Registry, Printers, StdCtrls, ExtCtrls, Jpeg;

  function setstatus(fee_no,status,ill:string):String;
//  function getmajtime(fee_no: string; var rs,rn:string):string;
  function getmajtime(fee_no: string; var rs,rn:TStringList):TStringList;
  procedure wratmajortime(time_type:string);
  Function getspace(str:string):integer;  
  procedure strReplace(ridt: TRichEdit);
  procedure strReplacememo(memodt: TMemo);
  function textstrReplace(ridt: string):string;
  function soapstrReplace(ridt: string):string;
  function RIDTReplace(ridt: TRichEdit):string;
  procedure use_opd_log(str:string);
  procedure sql_time_log(titl,Desc:string);
  procedure sql_Waiting_log(titl,Desc:string);
  procedure times_log(event,vsdoc,orderdoc,NTE:string);
  function GetFileDate(const FileName: string; out Creation, LastAccess,
         LastWrite: TDateTime): Boolean;  
  procedure Bednotuse;
  function FulltoHalf(str:string):string;
  function NURFulltoHalf(str:string):string;
  function Auto_chg_row(no:integer;lstr: string): TStringList;
  function dateformat(item:integer;dt:TDateTime):string;
  function getmonthofday(val : integer; dt : Tdatetime):TdateTime;//加減月
  function gettimes_seqno(fee_no:string):string;
  function EngStrEnd(no:integer;str: String): Integer;
  function SliptStr(no:integer;str: String): TStringList;
  function GetccbBed(Area:String):TStringList;
  Function GETPKG(keystr:string;var gcode:string):Boolean;
  Function Quickpkg(grpcode :string):Boolean;
  function CalTotal(med_code,self_ins_pay,Cir_code: string; pack_amt, med_days: Integer; per_qty: Extended): string;
  //套餐直接存檔開單
  //藥品
  Function InsertMed2(sggtmp:TStringGrid;Med_code : String; aCir: String = ''; aQty: String = ''; DcDate: String = ''; DcTime: String = '';aPath :String='';aMemo : String='') : Boolean;
  //檢驗
  Function InsertLab2(sggtmp:TStringGrid;feecode,qty,selfins,sendcd1,sendcd2,sendcd3:string):Boolean;
  //檢查
  Function InsertChk2(sggtmp:TStringGrid;feecode,sendcd1,qty,sefins,memo:string):Boolean;
  //放射
  Function InsertXRay2(sggtmp:TStringGrid;feecode,ordertpye,sefins,qty,sendcd1,sendcd2,memo:string):Boolean;
  //處置
  Function InsertFee2(sggtmp:TStringGrid;fee_code, source: string; Part_code: string = ''; aqty: string = ''; SELF_PAY_FLAG: string = ''):Boolean;
  //ICD
  Function InsertIcd2(sggtmp:TStringGrid;fee_code: string):Boolean;
  //衛材
  Function InsertMrtl2(sggtmp:TStringGrid;fee_code,qty,selfpay:string):Boolean;
  //文字醫囑
  Function insertordertxt2(sggtmp:TStringGrid;seqno,otxt:string):Boolean;
  function GetMaxNo: Boolean;
  Function get24_48_72(fee_no,chr_no,opd_date,opd_time:string):string;
  Function getipdthreeback(fee_no,chr_no:string):string;
  Function stas(val :string):string;
  Function ChkTraumaPapeOk(var messg:string;fee_no :string):Boolean;
  Function MaxMedDays(selfins: string;sender:TObject;co:integer):integer;
  Function dtl_log(KIND,MAJOR_NO,MAJOR_NAME,incident_dt:string):String;
  function er_look(inout, feeno, DocCode, SYSTYPE:string):string;
  function opd_ba1printflag(hav:string):string;
  function GetAreaname(Bed,fee:String):string;
  procedure SGridSort(sort,col: integer;Sender: TObject);
  procedure SGridSortnotitle(sort,col: integer;Sender: TObject);
  function InsertLabLog(Datatype: string):string;
  function getphraseno:string;
  function checkphragno(DEPT_CODE, USER_ID, GROUP_CODE:string):string;
  function getpatdisccode:string;
  function Loadtxtsql(fld:string):string;
  function sqlsheetno:string;
  procedure ClearPatBed(sfee_no: String);
  function emergencydeptlis(dept, listYN: string):string;
  function checkicd9(icd9: string):Boolean;
  function checkicd10(icd10: string):Boolean;
  Function replace(str:string):String;
  Function strComparing(STR, STR1 :string):Boolean;
  Function eCcr(Age: integer;MED_LIST,UD_DOSE,CIR_CODE,PATH_CODE,MED_TOTAL,MED_DAYS: STRING;Var flag: Boolean):string;
  function inserbioinfomation(wh,eh,TEMPERATURE,sp,sy,di,dt:string):Boolean;
  procedure selfClearSG(SG: TStringGrid);
  procedure F_EMRRecord(patage,kind: string);//完整
  procedure Temp_EMRRecord(patage,allseq,DCFlag: string);
  Function  InserCARERECORD_DATA_ER(RETITL,REDATA,REDESC,RESELF,REDEL,ECORDID: string):Boolean;
  Function  updateCARERECORD_DATA_ER(CARERECORD_ID,REDATA,REDESC,RESELF,REDEL: string):Boolean;
  function ImageToDB(all_no,SEQ,orderdate,ordertime,motext : String; PATHPIC : TImage):Boolean;//並歷首頁圖檔
var
  sgM_pkg,sgclx_pkg,sgFmto_pkg,sgi_pkg : TStringGrid;
  pkg_Sub,pkg_Obj,pkg_Plan,re72h,re72feeno,chtrm,regdept,VArrivaltime,threadMajorcont,threadReportstatus,threadransOrder : string;
  epd_sheet_no,all_seq_no,all_seq,all_sheet_no,RECORD_SEQ_no,RECORD_no : integer;
  repatlistprait,listsqloper : Boolean;
implementation

uses SysUtils,DBDM, MySQLc, Global, Commfunc, DB, EMRRecord, Variants;

function ImageToDB(all_no,SEQ,orderdate,ordertime,motext : String; PATHPIC : TImage):Boolean;
var
  Stream:TMemoryStream;
begin
  Result := True;
  try
    DM.ADOLink.BeginTrans;
    Stream := TMemoryStream.Create;
    PATHPIC.Picture.Graphic.SaveToStream(Stream);
    with DM.QryInsert do
    begin
      Close;
      SQL.Clear;
      SQL.Add('INSERT INTO EPD_ADMISSION_PIC(fee_no,seq_no,text,allorder_no,upd_oper,upd_date,upd_time,vs_code,order_date,order_time,pathpic) ');
      SQL.Add('VALUES(:fee_no,:seq_no,:text,:allorder_no,:upd_oper,:upd_date,:upd_time,:vs_code,:order_date,:order_time,:PATHPIC)');
      Prepared;
      Parameters.ParamByName('fee_no').Value := GetFeeNo;
      Parameters.ParamByName('seq_no').Value := SEQ;
      Parameters.ParamByName('text').Value := motext;
      Parameters.ParamByName('allorder_no').Value := all_no;
      Parameters.ParamByName('upd_oper').Value := getUserId;
      Parameters.ParamByName('upd_date').Value := ROCDate(Now,'');
      Parameters.ParamByName('upd_time').Value := ROCTime(Now,'');
      Parameters.ParamByName('vs_code').Value  := GetVsCode;
      Parameters.ParamByName('order_date').Value := orderdate;
      Parameters.ParamByName('order_time').Value := ordertime;
      Parameters.ParamByName('PATHPIC').LoadFromStream(Stream,ftBlob);
      ExecSQL;
      DM.ADOLink.CommitTrans;
      Stream.Free;
    end;
  Except
    DM.ADOLink.RollbackTrans;
    Stream.Free;
    Result := False;
  end;
end;


//nurs record data
function InserCARERECORD_DATA_ER(RETITL,
  REDATA,REDESC,RESELF,REDEL,ECORDID: string): Boolean;
VAR
  SQL: STRING;
begin
  Result := True;
  try
    sql := nurse(7);
    if trim(ECORDID) <> '' then
      SetParamter(sql,'$CARERECORD_ID$',Qt(ECORDID))
    else
      SetParamter(sql,'$CARERECORD_ID$',Qt(GetFeeNo+'_'+FormatDateTime('YYYYMMDDHHNNSSZZZ',Now)));
    SetParamter(sql,'$CREATNO$',Qt(getUserId));
    SetParamter(sql,'$GUIDE_NO$',Qt('  '));//指導者
    SetParamter(sql,'$UPDNO$',Qt(getUserId));
    SetParamter(sql,'$CREATNAME$',Qt(GETDOCNAME(getUserId)));
    SetParamter(sql,'$FEENO$',Qt(GetFeeNo));
    SetParamter(sql,'$TITLE$',Qt(RETITL));
    SetParamter(sql,'$C$',Qt(REDATA));
    SetParamter(sql,'$C_OTHER$',Qt(REDESC));
    SetParamter(sql,'$DELETED$',Qt(REDEL));
    SetParamter(sql,'$SELF$',Qt(RESELF));
    SetParamter(sql,'$SIGN$',Qt('N'));

    DM.QryInsert.Close;
    DM.QryInsert.SQL.Text := sql;
    DM.QryInsert.ExecSQL;
  except
    Result := False;
  end;
end;

function updateCARERECORD_DATA_ER(CARERECORD_ID, REDATA, REDESC,
  RESELF, REDEL: string): Boolean;
VAR
  SQL: STRING;
begin
  Result := True;
  try
    sql := nurse(71);
    SetParamter(sql,'$CARERECORD_ID$',Qt(CARERECORD_ID));
    SetParamter(sql,'$CREATNO$',Qt(getUserId));
    SetParamter(sql,'$GUIDE_NO$',Qt('  '));//指導者
    SetParamter(sql,'$UPDNO$',Qt(getUserId));
    SetParamter(sql,'$CREATNAME$',Qt(GETDOCNAME(getUserId)));
    SetParamter(sql,'$FEENO$',Qt(GetFeeNo));
    SetParamter(sql,'$TITLE$',Qt(' '));
    SetParamter(sql,'$C$',Qt(REDATA));
    SetParamter(sql,'$C_OTHER$',Qt(REDESC));
    SetParamter(sql,'$DELETED$',Qt(REDEL));
    SetParamter(sql,'$SELF$',Qt(RESELF));
    SetParamter(sql,'$SIGN$',Qt('N'));

    DM.QryInsert.Close;
    DM.QryInsert.SQL.Text := sql;
    DM.QryInsert.ExecSQL;
  except
    Result := False;
  end;
end;

procedure Temp_EMRRecord(patage,allseq,DCFlag: string);
VAR
  Q_STR,seq, so_flag,sft,spc,stemp,pretime,arrival_date :STRING;
  myFlag,flagname,name_val,MEMO_lev : TStringList;
  i,memoqty,memonew,j: integer;
  bfdate,itmesort,prtflag,bfdoc,bfvsdoc : string;
begin
  spc := '  ';
  name_val := TStringList.Create;
  MEMO_lev := TStringList.Create;
  myFlag := TstringList.Create;
  myFlag.Clear;
  myFlag.Add('T_TRIAGE');
  myFlag.Add('A_ASSESSMENT');
  myFlag.Add('O_SUBJECT');
  myFlag.Add('O_OJECT');
  myFlag.Add('O_PLAN');
  myFlag.Add('O_HISTORY');
  myFlag.Add('P_M');
  myFlag.Add('P_L');
  myFlag.Add('P_C');
  myFlag.Add('P_X');
  myFlag.Add('P_F');
  myFlag.Add('P_O');
  myFlag.Add('P_T');
  flagname := TstringList.Create;
  flagname.Clear;
  flagname.Add('');
  flagname.Add('★檢傷');
  flagname.Add('★診斷');
  flagname.Add('★Subject');
  flagname.Add('★Object');
  flagname.Add('★PLAN');
  flagname.Add('★HISTORY');
  flagname.Add('★用藥');
  flagname.Add('★檢驗');
  flagname.Add('★檢查');
  flagname.Add('★放射');
  flagname.Add('★處置');
  flagname.Add('★衛材');
  flagname.Add('★敘述醫囑');

  Q_STR := sql_str(25);
  SetParamter(q_str,'$FEE_NO$',qt(GetFeeNo));
  SetParamter(q_str,'$OPD_DATE$',qt(GetEpdDate));
  DM.QrySubSearch.Close;
  DM.QrySubSearch.SQL.Text := Q_STR;
  DM.QrySubSearch.Open;
  SEQ := '0';
  if not dm.QrySubSearch.IsEmpty then
  begin
    if not assigned(FrmEMRRecord) then
      FrmEMRRecord := TFrmEMRRecord.Create(FrmEMRRecord);

    FrmEMRRecord.QRLbchrno.Caption := TRIM(DM.QrySubSearch.FieldByName('chr_no').AsString);
    FrmEMRRecord.QRLbpatname.Caption := trim(DM.QrySubSearch.FieldByName('pat_name').AsString);
    FrmEMRRecord.QRLbage.Caption := Trim(patage) ;
    //FrmEMRRecord.QRLbbedno.Caption := TRIM(DM.QrySubSearch.FieldByName('epd_bed').AsString);
    FrmEMRRecord.QRLBIdNo.Caption := GetIdNo;
    stemp := TRIM(DM.QrySubSearch.FieldByName('arrival_date').AsString);
    if stemp <> '' then
      FrmEMRRecord.QRLbArrival.Caption := RocDate(RoctoDate(IntTostr(StrToInt(ReTurnId(stemp))-19110000)),'/')+' '+RocTimes(RocToTime(ReTurnName(stemp)),':')
    else
      FrmEMRRecord.QRLbArrival.Caption := '';
    FrmEMRRecord.QRLbBirthday.Caption := '民國 '+IntToStr(strToInt(getyear(GetBirth)))+ '年 '+getmonth(GetBirth)+'月 '+getdays(GetBirth) +'日';
    FrmEMRRecord.QRLbSex.Caption := SexType(Getsex01);
    FrmEMRRecord.QRLbtalheatcir.Caption := TRIM(DM.QrySubSearch.FieldByName('heat').AsString);

    Q_STR := GETEPDRECORD(5);
    SetParamter(q_str,'$FEE_NO$',qt(GetFeeNo));
    SetParamter(q_str,'$ALLORDER$',qt(allseq));
    SetParamter(q_str,'$SEQ$',qt(allseq));
    SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := Q_STR;
    DM.QryTemp.Open;
    if not dm.QryTemp.IsEmpty then
    begin
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
      FrmEMRRecord.mymemo.Add(CharAdd('#P#    急診病程',' ',80));
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
      while not dm.QryTemp.Eof DO
      begin
        if Trim(dm.QryTemp.FieldByName('del_flag').AsString) = 'Y' then
        begin
          spc := '刪 ';
          if DCFlag = 'N' then
          begin
            DM.QryTemp.Next;
            Continue;
          end;
        end
        else if Trim(dm.QryTemp.FieldByName('DC_FLAG').AsString) = 'Y' then
          spc := 'DC '
        else
          spc := '  ';
        if  (SEQ <> '0') and ((Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)+Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)) <> pretime )  then
        begin
          FrmEMRRecord.mymemo.Add(CharAdd('_','_',80));
          FrmEMRRecord.mymemo.Add('時間:'+bfdate+ '  開單:'+GETDOCNAME(bfdoc)+'/主治:'+GETDOCNAME(bfvsdoc));
          so_flag := '';
        end;
        if ReturnId(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) <> sft then
        begin
          sft :=  ReturnId(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString));
          if sft <>'T' then
          begin
            stemp := '';
            FrmEMRRecord.mymemo.Add(stemp);
          end;
        end;

        case myFlag.IndexOf(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) of
        //0,2..5:
        2..5:
          begin
            //檢傷資料 sohp
            {name_val := SliptStr(80,FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString));
            for i := 0 to name_val.Count-1 do
              FrmEMRRecord.mymemo.Add(spc+name_val.Strings[i]); }

            name_val := SliptStr(80,FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString));
            for i := 0 to name_val.Count-1 do
            begin
              if ((pos('Subject',name_val.Strings[i]) > 0) or
                 (pos('Object',name_val.Strings[i]) > 0) or
                 (pos('Assessment',name_val.Strings[i]) > 0) or
                 (pos('Plan',name_val.Strings[i]) > 0)) then
                 FrmEMRRecord.mymemo.Add(spc+name_val.Strings[i])
              else
                case myFlag.IndexOf(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) of
                  2: FrmEMRRecord.mymemo.Add('         '+name_val.Strings[i]);//s
                  3: FrmEMRRecord.mymemo.Add('        '+name_val.Strings[i]);//o
                  4: FrmEMRRecord.mymemo.Add('            '+name_val.Strings[i]);//a
                  5: FrmEMRRecord.mymemo.Add('      '+name_val.Strings[i]);//p
                end;
            end;

          end;
        1 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('診斷碼',' ',12)+'診斷名稱');
            FrmEMRRecord.mymemo.Add(spc+dm.QryTemp.FieldByName('ORDER_TEXT').AsString); //診斷
          end;
        6 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('藥品名稱',' ',40)+CharAdd('劑量',' ',5)+CharAdd('單位',' ',6)+CharAdd('天',' ',3)+CharAdd('途徑',' ',5)+CharAdd('總數',' ',5)+'健'+CharAdd('頻率',' ',6));
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(dm.QryTemp.FieldByName('QTY_NUM').AsString,' ',5)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('UNIT_DESC').AsString),' ',6)+
                                               CharAdd(dm.QryTemp.FieldByName('ORDER_DAYS').AsString,' ',3)+
                                               CharAdd(dm.QryTemp.FieldByName('PATH_CODE').AsString,' ',5)+
                                               CharAdd(dm.QryTemp.FieldByName('TTL_QTY').AsString,' ',5)+
                                               charadd(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString,' ',3)+
                                               CharAdd(dm.QryTemp.FieldByName('CIR_CODE').AsString,' ',6));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin//名稱第二行
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(30,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',30))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',30));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',30));
                inc(memoqty);
              end;
            end;
          end;
        7 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('檢驗代碼',' ',12)+CharAdd('檢驗名稱',' ',40)+CharAdd('檢體',' ',7)+CharAdd('數量',' ',6)+'健');
              name_val.Clear;
            end;
            MEMO_lev.clear;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));

            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(trim(FulltoHalf(getLabSamplename(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)))),' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString),' ',6));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',18));
                inc(memoqty);
              end;
            end;
          end;
        8 : //檢查
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('檢查代碼',' ',12)+CharAdd('檢查名稱',' ',40)+CharAdd('檢查室',' ',7)+CharAdd('數量',' ',6)+'健');
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(getchkRoomName(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)),' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                inc(memoqty);
              end;
            end;
          end;
        9 : //放射
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin                                                                                 // +CharAdd('部位',' ',7)
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('放射代碼',' ',12)+CharAdd('放射名稱',' ',47)+CharAdd('數量',' ',6)+'健');
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',47)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                inc(memoqty);
              end;
            end;
          end;
        10: //處置
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('處置代碼',' ',12)+CharAdd('處置名稱',' ',40)+CharAdd('部位',' ',7)+CharAdd('數量',' ',7)+'健');
              name_val.Clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(dm.QryTemp.FieldByName('part_code').AsString,' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString))
              else
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
            end;
          end;
        11: //衛材
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('衛材名稱',' ',60)+CharAdd('數量',' ',6)+'健');
            FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_NAME').AsString),' ',60)+
                                           CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                           trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
          end;
        12: //文字醫囑
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+'文字醫囑');
              name_val.Clear;
            end;
            name_val := SliptStr(70,trim(FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',70))
            end;
          end;
        end;
        so_flag := Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString);
        seq     := Trim(dm.QryTemp.FieldByName('SEQ').AsString);
        pretime := Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)+Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString);
        bfdate  := ROCDate(ROCToDate(Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)),'/')+' '+ROCTimes(ROCToTime(Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)),':');
        bfdoc   := Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString);
        bfvsdoc := Trim(dm.QryTemp.FieldByName('VS_DOC').AsString);
        dm.QryTemp.Next;
      end;

      //取離院診斷
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',40));
      spc := '  ';
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      {DM.QrySearch3.SQL.Add('select upd_date||upd_time,icd_code,(select eng_full_desc from icd_code_basic a where a.icd_code=order_icd_code.icd_code)as text_desc,''0'' as kind_no ');
      DM.QrySearch3.SQL.Add('from order_icd_code where order_kind=''EPD'' and order_type=''CPD'' and opd_date='+qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo));
      DM.QrySearch3.SQL.Add(' union all ');
      DM.QrySearch3.SQL.Add('select upd_date||upd_time,'''' as icd_code,text_desc as icd_code,kind_no from leave_diag where kind_no <> ''0'' and fee_no='+Qt(GetFeeNo)+' and order_date= '+qt(GetEpdDate)+' and cncl_flag=''N'' order by 4');
      //20160201 for ICD10 Edit
      //DM.QrySearch3.SQL.Add('select text_desc,kind_no from leave_diag where fee_no='+Qt(GetFeeNo)+' and cncl_flag=''N'' order by seq_no');
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
        FrmEMRRecord.mymemo.Add('※'+CharAdd('離院診斷碼',' ',12)+'診斷名稱');
      WHILE NOT DM.QrySearch3.Eof DO
      BEGIN
        if trim(dm.QrySearch3.FieldByName('kind_no').AsString)= '0' then
          FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QrySearch3.FieldByName('icd_code').AsString),' ',12)+ trim(dm.QrySearch3.FieldByName('text_desc').AsString)) //診斷
        else
          FrmEMRRecord.mymemo.Add(spc+trim(dm.QrySearch3.FieldByName('text_desc').AsString));
        DM.QrySearch3.Next;
      END;}

      DM.QrySearch3.SQL.Add('select a.opd_date,a.fee_no,a.seq_no,trim(a.icd_code)||''_''||b.eng_full_desc icd_code,''0'' as kind_no ');
      DM.QrySearch3.SQL.Add('from order_icd_code a ');
      DM.QrySearch3.SQL.Add('left join icd_code_basic b on b.icd_code=a.icd_code ');
      DM.QrySearch3.SQL.Add('where order_kind=''EPD'' and opd_date='+qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo)+' and order_type=''CPD'' ');
      DM.QrySearch3.SQL.Add('union all ');
      DM.QrySearch3.SQL.Add('select order_date,fee_no,seq_no,text_desc,kind_no from leave_diag where cncl_flag=''N'' and kind_no=''2'' and fee_no='+Qt(GetFeeNo)+' and order_date ='+qt(GetEpdDate));
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
      begin
        FrmEMRRecord.mymemo.Add('※'+CharAdd('離院診斷碼',' ',12)+'診斷名稱');
        name_val.Clear;
      end;
      WHILE NOT DM.QrySearch3.Eof DO
      BEGIN
        if trim(dm.QrySearch3.FieldByName('kind_no').AsString)= '0' then
        begin
          name_val := SliptStr(54,trim(FulltoHalf(ReturnName(trim(dm.QrySearch3.FieldByName('icd_code').AsString)))));
          for i := 0 to name_val.Count-1 do
          begin
            if i = 0 then
              FrmEMRRecord.mymemo.Add(spc+CharAdd(ReturnId(trim(dm.QrySearch3.FieldByName('icd_code').AsString)),' ',12)+ CharAdd(name_val.Strings[i],' ',54)) //診斷
            else
              FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+ CharAdd(name_val.Strings[i],' ',54)) //診斷
          end;
        end
        else
          FrmEMRRecord.mymemo.Add(trim(dm.QrySearch3.FieldByName('icd_code').AsString));
        DM.QrySearch3.Next;
      END;


      //完診(病人動向)
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      DM.QrySearch3.SQL.Add('select care from epd_his where fee_no='+Qt(GetFeeNo)+' and epd_date='+qt(GetEpdDate));
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
      begin
        if trim(getexthospName(trim(DM.QrySearch3.fieldbyname('care').AsString)))<> '' then
          FrmEMRRecord.MYMEMO.Add('※離院方式 :'+getexthospName(trim(DM.QrySearch3.fieldbyname('care').AsString)));
      end;
      //FrmEMRRecord.mymemo.Add(CharAdd('-','-',40));
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
      FrmEMRRecord.mymemo.Add('※時間:'+ROCDate(ROCToDate(Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)),'/')+' '+ROCTimes(ROCToTime(Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)),':')+
                            ' 開單:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString))+'/主治:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('VS_DOC').AsString))+'醫師');
      //病人檢驗報告資料
     { spc := '  ';
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select (Select Trim(Code_oneName) from COMPARE_CODE_BASIC b where b.code_one=a.exper_class and ipd_related=''L1'') as TME,');
      DM.QryTemp.SQL.Add('Trim(a.r_item_name) as ITEM,Trim(a.result_date_t) as DATAT,Trim(a.result_data_q) as DATAQ,a.result_flag ');
      DM.QryTemp.SQL.Add('from lab_data a where a.LAB_no IN(select  sp_no  from Lab_list where fee_no='+Qt(GetFeeNo)+') ORDER BY 1');
      DM.QryTemp.Open;
      IF NOT DM.QryTemp.IsEmpty THEN
      BEGIN
        FrmEMRRecord.mymemo.Add('◎'+'檢驗報告');
        FrmEMRRecord.mymemo.Add(spc+CharAdd('組別',' ',10)+CharAdd('項目',' ',32)+CharAdd('定性',' ',15)+CharAdd('定量',' ',15)+'結果');
        FrmEMRRecord.mymemo.Add(spc+'-----------------------------------------------------------------------------');
        WHILE NOT DM.QryTemp.Eof DO
        BEGIN
          FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('TME').AsString),' ',10)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('ITEM').AsString),' ',32)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('DATAT').AsString),' ',15)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('DATAQ').AsString),' ',15)+
                                         trim(dm.QryTemp.FieldByName('result_flag').AsString));
          DM.QryTemp.Next;
        END;
      END;}
      //列印醫師
      //FrmEMRRecord.QRLabel17.Caption := '列印醫師 : '+ GETDOCNAME(getUserId);
      FrmEMRRecord.QRLbprintdoc.Caption := '列印醫師 : '+ GETDOCNAME(getUserId);

      FrmEMRRecord.PrepareSQL('EDR');
      if assigned(FrmEMRRecord) then
        FrmEMRRecord := nil;

    end
    else
      ShowMessage('無病歷資料');
  end;
end;

procedure F_EMRRecord(patage,kind: string);//完整
VAR
  Q_STR,seq, so_flag,sft,spc,stemp,pretime,arrival_date :STRING;
  myFlag,flagname,name_val,MEMO_lev : TStringList;
  i,memoqty,memonew,j,PICCOUNT,FIRCOUNT: integer;
  bfdate,itmesort,prtflag,bfdoc,bfvsdoc : string;
  reg : TRegistry;
  DefPrint : String;
  tms : TMemoryStream;
  J1: TJPEGImage;
begin
  spc := '  ';
  name_val := TStringList.Create;
  MEMO_lev := TStringList.Create;
  myFlag := TstringList.Create;
  myFlag.Clear;
  myFlag.Add('T_TRIAGE');
  myFlag.Add('A_ASSESSMENT');
  myFlag.Add('O_SUBJECT');
  myFlag.Add('O_OJECT');
  myFlag.Add('O_PLAN');
  myFlag.Add('O_HISTORY');
  myFlag.Add('P_M');
  myFlag.Add('P_L');
  myFlag.Add('P_C');
  myFlag.Add('P_X');
  myFlag.Add('P_F');
  myFlag.Add('P_O');
  myFlag.Add('P_T');
  flagname := TstringList.Create;
  flagname.Clear;
  flagname.Add('');
  flagname.Add('★檢傷');
  flagname.Add('★診斷');
  flagname.Add('★Subject');
  flagname.Add('★Object');
  flagname.Add('★PLAN');
  flagname.Add('★HISTORY');
  flagname.Add('★用藥');
  flagname.Add('★檢驗');
  flagname.Add('★檢查');
  flagname.Add('★放射');
  flagname.Add('★處置');
  flagname.Add('★衛材');
  flagname.Add('★敘述醫囑');

  Q_STR := sql_str(25);
  SetParamter(q_str,'$FEE_NO$',qt(GetFeeNo));
  SetParamter(q_str,'$OPD_DATE$',qt(GetEpdDate));
  //SetParamter(q_str,'$FEE_NO$','''E51102348''');
  //SetParamter(q_str,'$OPD_DATE$','''1051109''');
  DM.QrySubSearch.Close;
  DM.QrySubSearch.SQL.Text := Q_STR;
  DM.QrySubSearch.Open;
  SEQ := '0';
  if not dm.QrySubSearch.IsEmpty then
  begin
    if not assigned(FrmEMRRecord) then
      FrmEMRRecord := TFrmEMRRecord.Create(FrmEMRRecord);

    FrmEMRRecord.QRLbchrno.Caption := TRIM(DM.QrySubSearch.FieldByName('chr_no').AsString);
    FrmEMRRecord.QRLbpatname.Caption := trim(DM.QrySubSearch.FieldByName('pat_name').AsString);
    FrmEMRRecord.QRLbage.Caption := Trim(patage) ;
    //FrmEMRRecord.QRLbbedno.Caption := TRIM(DM.QrySubSearch.FieldByName('epd_bed').AsString);
    FrmEMRRecord.QRLBIdNo.Caption := GetIdNo;
    stemp := TRIM(DM.QrySubSearch.FieldByName('arrival_date').AsString);
    if stemp <> '' then
      FrmEMRRecord.QRLbArrival.Caption := RocDate(RoctoDate(IntTostr(StrToInt(ReTurnId(stemp))-19110000)),'/')+' '+RocTimes(RocToTime(ReTurnName(stemp)),':')
    else
      FrmEMRRecord.QRLbArrival.Caption := '';
    FrmEMRRecord.QRLbBirthday.Caption := '民國 '+IntToStr(strToInt(getyear(GetBirth)))+ '年 '+getmonth(GetBirth)+'月 '+getdays(GetBirth) +'日';
    FrmEMRRecord.QRLbSex.Caption := SexType(Getsex01);
    FrmEMRRecord.QRLbtalheatcir.Caption := TRIM(DM.QrySubSearch.FieldByName('heat').AsString);

    //病歷首頁

    //看診時間
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := 'select date_time from epd_timelog where seq_no=(select min(seq_no)'+
                           ' from epd_timelog where time_type=''61'' and fee_no='+Qt(GetFeeNo)+' and LOG_DATE >= '+qt(Minus_six_months_date)+')';
    DM.QryTemp.Open;
    if not DM.QryTemp.IsEmpty then //20160531改呈現格式
      FrmEMRRecord.mymemo.Add('DATETIME:'+ ROCDate(DM.QryTemp.fieldbyname('date_time').AsDateTime,'/') +' '+ ROCTimes(DM.QryTemp.fieldbyname('date_time').AsDateTime,':'));

    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := 'select * from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and order_date ='+qt(GetEpdDate)+' and del_flag=''N'' order by print_flag,ORDER_SORT,SEQ_NO';
    DM.QryTemp.Open;
    itmesort := '';
    prtflag  := '';
    stemp := '    ';
    PICCOUNT := 1;
    FIRCOUNT := 0;
    while not DM.QryTemp.Eof do
    begin
      INC(FIRCOUNT);
      //於每份病歷首頁結尾插入圖檔*******
      if ((prtflag <> trim(DM.QryTemp.fieldbyname('print_flag').AsString)) and (prtflag <> '') ) OR (DM.QryTemp.RecordCount =FIRCOUNT ) then
      BEGIN
        DM.QrySubSearch.Close;
        DM.QrySubSearch.SQL.Clear;
        DM.QrySubSearch.SQL.Add('select *');
        DM.QrySubSearch.SQL.Add(' from EPD_ADMISSION_PIC where fee_no='+Qt(GetFeeNo)+' and order_date ='+qt(GetEpdDate));
        DM.QrySubSearch.SQL.Add(' and allorder_no=(select max(allorder_no) from EPD_TABULATION where kind = ''FIRST_RECORD'' and fee_no='+Qt(GetFeeNo)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate));
        if DM.QryTemp.Eof then
          DM.QrySubSearch.SQL.Add(' AND print_flag='+Qt(trim(DM.QryTemp.fieldbyname('print_flag').AsString))+')')
        else
          DM.QrySubSearch.SQL.Add(' AND print_flag='+Qt(prtflag)+')');

        DM.QrySubSearch.Open;
        if not DM.QrySubSearch.IsEmpty then
        begin
          FrmEMRRecord.mymemo.Add('SHOWPIC') ;
          tms := TmemoryStream.Create;
          TBlobField(DM.QrySubSearch.FieldByName('PATHPIC')).SaveToStream(tms);
          J1 := TJPEGImage.Create;
          TMS.Seek(0,soFromBeginning);
          with J1 do
          begin
            PixelFormat := jf24Bit;
            Scale := jsFullSize;
            Grayscale := False;
            Performance := jpBestQuality;
            ProgressiveDisplay := True;
            ProgressiveEncoding := True;
            LoadFromStream(tms);
          end;
          case PICCOUNT of
             1: FrmEMRRecord.Image1.Picture.Assign(J1);
             2: FrmEMRRecord.Image2.Picture.Assign(J1);
             3: FrmEMRRecord.Image3.Picture.Assign(J1);
             4: FrmEMRRecord.Image4.Picture.Assign(J1);
             5: FrmEMRRecord.Image5.Picture.Assign(J1);
           end;
          inc(PICCOUNT);
          FrmEMRRecord.QRMemPICDesc.Lines.Text := DM.QrySubSearch.fieldbyname('text').AsString;
          FreeAndNil(tms);
          FreeAndNil(J1);
        end;
      END;//每份病歷首頁結尾插入圖檔*******END

      if prtflag <> trim(DM.QryTemp.fieldbyname('print_flag').AsString) then
      begin
        //列印已換份尚未列印的資料
        if (itmesort <> trim(DM.QryTemp.fieldbyname('ORDER_SORT').AsString)) and
           (itmesort <> '') and
           (pos('◎',trim(DM.QryTemp.fieldbyname('text').AsString)) > 0) then
        begin
          if trim(stemp) <> '' then
          begin
            name_val := SliptStr(70,FulltoHalf(stemp));
            for i := 0 to name_val.Count-1 do
            begin
              FrmEMRRecord.MYMEMO.Add('        '+name_val[i]);
            end;
            stemp := '    ';
          end;
        end;

        //區分首頁份數
        FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
        FrmEMRRecord.MYMEMO.Add('#P#病歷首頁'+trim(DM.QryTemp.fieldbyname('print_flag').AsString)+
                               //'   時間:'+ROCDate(ROCToDate(Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)),'/')+' '+ROCTimes(ROCToTime(Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)),':')+
                               '   醫師:'+GETDOCNAME(trim(DM.QryTemp.fieldbyname('upd_oper').AsString)));
        FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
      end;

      if itmesort = trim(DM.QryTemp.fieldbyname('ORDER_SORT').AsString) then
      begin
        if itmesort ='02' then
        begin
          if trim(DM.QryTemp.fieldbyname('text').AsString) <> '' then
            FrmEMRRecord.MYMEMO.Add('    '+trim(DM.QryTemp.fieldbyname('text').AsString));
        end
        else
        begin
          if pos('*',trim(DM.QryTemp.fieldbyname('text').AsString)) > 0 then
          begin
            if trim(stemp) <> '' then
            begin
              name_val := SliptStr(70,FulltoHalf(stemp));
              for i := 0 to name_val.Count-1 do
              begin
                FrmEMRRecord.MYMEMO.Add('        '+name_val[i]);
              end;
              stemp := '    ';
            end;
            FrmEMRRecord.MYMEMO.Add('    '+trim(DM.QryTemp.fieldbyname('text').AsString));
          end
          else
            stemp := stemp +' '+ Trim(DM.QryTemp.fieldbyname('text').AsString);
        end;
      end
      else
      begin
        if trim(stemp) <> '' then
        begin
          name_val := SliptStr(70,FulltoHalf(stemp));
          for i := 0 to name_val.Count-1 do
          begin
            FrmEMRRecord.MYMEMO.Add('        '+name_val[i]);
          end;
          stemp := '    ';
        end;
        FrmEMRRecord.MYMEMO.Add(DM.QryTemp.fieldbyname('text').AsString);
      end;
      itmesort := trim(DM.QryTemp.fieldbyname('ORDER_SORT').AsString);
      prtflag  := trim(DM.QryTemp.fieldbyname('print_flag').AsString);
      dm.QryTemp.Next;
    end;
    
    if trim(stemp) <> '' then
    begin
      name_val := SliptStr(70,FulltoHalf(stemp));
      for i := 0 to name_val.Count-1 do
      begin
        FrmEMRRecord.MYMEMO.Add('        '+name_val[i]);
      end;
      stemp := '    ';
    end;

    FrmEMRRecord.mymemo.Add('NEWPEGE');


    Q_STR := GETEPDRECORD(3);
    SetParamter(q_str,'$FEE_NO$',qt(GetFeeNo));
    SetParamter(q_str,'$ORDER_DATE$',qt(GetEpdDate));
    DM.QryTemp.Close;
    DM.QryTemp.SQL.Text := Q_STR;
    DM.QryTemp.Open;
    if not dm.QryTemp.IsEmpty then
    begin
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
      FrmEMRRecord.mymemo.Add(CharAdd('#P#    急診病程',' ',80));
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
      while not dm.QryTemp.Eof DO
      begin
        if Trim(dm.QryTemp.FieldByName('del_flag').AsString) = 'Y' then
        begin
          spc := '刪 ';
          DM.QryTemp.Next;
          Continue;
        end
        else if Trim(dm.QryTemp.FieldByName('DC_FLAG').AsString) = 'Y' then
          spc := 'DC '
        else
          spc := '  ';
        if  (SEQ <> '0') and ((Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)+Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)) <> pretime )  then
        begin //  (Trim(dm.QryTemp.FieldByName('seq').AsString) <> seq) AND
          FrmEMRRecord.mymemo.Add(CharAdd('_','_',80));
          FrmEMRRecord.mymemo.Add('時間:'+bfdate+ '  開單:'+GETDOCNAME(bfdoc)+'/主治:'+GETDOCNAME(bfvsdoc));
                           // '  開單:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString))+'/主治:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('VS_DOC').AsString)));
          so_flag := '';
        end;
        if ReturnId(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) <> sft then
        begin
          sft :=  ReturnId(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString));
          if sft <>'T' then
          begin
            stemp := '';
            FrmEMRRecord.mymemo.Add(stemp);
          end;
        end;

        case myFlag.IndexOf(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) of
        //0,2..5:
        2..5:
          begin
            //檢傷資料 sohp
            {name_val := SliptStr(80,FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString));
            for i := 0 to name_val.Count-1 do
              FrmEMRRecord.mymemo.Add(spc+name_val.Strings[i]); }

            name_val := SliptStr(80,FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString));
            for i := 0 to name_val.Count-1 do
            begin
              if ((pos('Subject',name_val.Strings[i]) > 0) or
                 (pos('Object',name_val.Strings[i]) > 0) or
                 (pos('Assessment',name_val.Strings[i]) > 0) or
                 (pos('Plan',name_val.Strings[i]) > 0)) then
                 FrmEMRRecord.mymemo.Add(spc+name_val.Strings[i])
              else
                case myFlag.IndexOf(Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)) of
                  2: FrmEMRRecord.mymemo.Add('         '+name_val.Strings[i]);//s
                  3: FrmEMRRecord.mymemo.Add('        '+name_val.Strings[i]);//o
                  4: FrmEMRRecord.mymemo.Add('            '+name_val.Strings[i]);//a
                  5: FrmEMRRecord.mymemo.Add('      '+name_val.Strings[i]);//p
                end;
            end;

          end;
        1 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('診斷碼',' ',12)+'診斷名稱');
            FrmEMRRecord.mymemo.Add(spc+dm.QryTemp.FieldByName('ORDER_TEXT').AsString); //診斷
          end;
        6 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('藥品名稱',' ',40)+CharAdd('劑量',' ',5)+CharAdd('單位',' ',6)+CharAdd('天',' ',3)+CharAdd('途徑',' ',5)+CharAdd('總數',' ',5)+'健'+CharAdd('頻率',' ',6));
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(dm.QryTemp.FieldByName('QTY_NUM').AsString,' ',5)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('UNIT_DESC').AsString),' ',6)+
                                               CharAdd(dm.QryTemp.FieldByName('ORDER_DAYS').AsString,' ',3)+
                                               CharAdd(dm.QryTemp.FieldByName('PATH_CODE').AsString,' ',5)+
                                               CharAdd(dm.QryTemp.FieldByName('TTL_QTY').AsString,' ',5)+
                                               charadd(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString,' ',3)+
                                               CharAdd(dm.QryTemp.FieldByName('CIR_CODE').AsString,' ',6));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin//名稱第二行
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(30,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',30))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',30));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',30));
                inc(memoqty);
              end;
            end;
          end;
        7 :
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('檢驗代碼',' ',12)+CharAdd('檢驗名稱',' ',40)+CharAdd('檢體',' ',7)+CharAdd('數量',' ',6)+'健');
              name_val.Clear;
            end;
            MEMO_lev.clear;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));

            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(trim(FulltoHalf(getLabSamplename(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)))),' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString),' ',6));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',18));
                inc(memoqty);
              end;
            end;
          end;
        8 : //檢查
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('檢查代碼',' ',12)+CharAdd('檢查名稱',' ',40)+CharAdd('檢查室',' ',7)+CharAdd('數量',' ',6)+'健');
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(getchkRoomName(trim(dm.QryTemp.FieldByName('PATH_CODE').AsString)),' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                inc(memoqty);
              end;
            end;
          end;
        9 : //放射
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin                                                                                 // +CharAdd('部位',' ',7)
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('放射代碼',' ',12)+CharAdd('放射名稱',' ',47)+CharAdd('數量',' ',6)+'健');
              name_val.Clear;
              MEMO_lev.clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',47)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
                if (name_val.Count < 2) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then
                begin
                  MEMO_lev := SliptStr(70,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  if MEMO_lev.Count > 1 then
                  begin
                    for j := 0 to MEMO_lev.Count-1 do
                      if j = 0 then
                        FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Strings[j],' ',70))
                      else
                        FrmEMRRecord.mymemo.Add(spc+charadd(MEMO_lev.Strings[j],' ',70));
                  end
                  else
                   FrmEMRRecord.mymemo.Add(spc+'說明:'+charadd(MEMO_lev.Text,' ',70));
                end;
              end
              else
              begin
                if trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '' then
                begin
                  MEMO_lev := SliptStr(20,FulltoHalf(dm.QryTemp.FieldByName('MEMO_DESC').AsString));
                  memoqty := 0;
                  if memoqty = 0 then
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+'說明:'+charadd(MEMO_lev.Strings[memoqty],' ',20))
                  else
                    FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                  inc(memoqty);
                end
                else
                begin
                  FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
                end;
              end;
            end;
            if (name_val.Count > 1) and (memoqty < MEMO_lev.Count) and (trim(dm.QryTemp.FieldByName('MEMO_DESC').AsString)<> '') then //多行的說明
            begin
              memonew := memoqty;
              for i := memonew to MEMO_lev.Count-memoqty do
              begin
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(' ',' ',40)+charadd(MEMO_lev.Strings[memoqty],' ',20));
                inc(memoqty);
              end;
            end;
          end;
        10: //處置
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('處置代碼',' ',12)+CharAdd('處置名稱',' ',40)+CharAdd('部位',' ',7)+CharAdd('數量',' ',7)+'健');
              name_val.Clear;
            end;
            name_val := SliptStr(40,trim(FulltoHalf(dm.QryTemp.FieldByName('FEE_name').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              if i = 0 then
                FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_code').AsString),' ',12)+
                                               CharAdd(name_val.Strings[i],' ',40)+
                                               CharAdd(dm.QryTemp.FieldByName('part_code').AsString,' ',7)+
                                               CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                               trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString))
              else
                FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+CharAdd(name_val.Strings[i],' ',40));
            end;
          end;
        11: //衛材
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
              FrmEMRRecord.mymemo.Add('◎'+CharAdd('衛材名稱',' ',60)+CharAdd('數量',' ',6)+'健');
            FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('FEE_NAME').AsString),' ',60)+
                                           CharAdd(trim(dm.QryTemp.FieldByName('QTY_NUM').AsString),' ',6)+
                                           trim(dm.QryTemp.FieldByName('SELF_PAY_FLAG').AsString));
          end;
        12: //文字醫囑
          begin
            if (Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString)<> so_flag) then //中文:mbSingleByte 英文:空白
            begin
              FrmEMRRecord.mymemo.Add('◎'+'文字醫囑');
              name_val.Clear;
            end;
            name_val := SliptStr(70,trim(FulltoHalf(dm.QryTemp.FieldByName('ORDER_TEXT').AsString)));
            for i := 0 to name_val.Count-1 do
            begin
              FrmEMRRecord.mymemo.Add(spc+CharAdd(name_val.Strings[i],' ',70))
            end;
          end;
        end;
        so_flag := Trim(dm.QryTemp.FieldByName('SO_FLAG').AsString);
        seq     := Trim(dm.QryTemp.FieldByName('SEQ').AsString);
        pretime := Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)+Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString);
        bfdate  := ROCDate(ROCToDate(Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)),'/')+' '+ROCTimes(ROCToTime(Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)),':');
        bfdoc   := Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString);
        bfvsdoc := Trim(dm.QryTemp.FieldByName('VS_DOC').AsString);
        dm.QryTemp.Next;
      end;

      //取離院診斷
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',40));
      spc := '  ';
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      {DM.QrySearch3.SQL.Add('select upd_date||upd_time,icd_code,(select eng_full_desc from icd_code_basic a where a.icd_code=order_icd_code.icd_code)as text_desc,''0'' as kind_no ');
      DM.QrySearch3.SQL.Add('from order_icd_code where order_kind=''EPD'' and order_type=''CPD'' and opd_date>='+qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo));
      DM.QrySearch3.SQL.Add(' union all ');
      DM.QrySearch3.SQL.Add('select upd_date||upd_time,'''' as icd_code,text_desc as icd_code,kind_no from leave_diag where kind_no <> ''0'' and fee_no='+Qt(GetFeeNo)+' and order_date= '+qt(GetEpdDate)+' and cncl_flag=''N'' order by 4');
      //20160201 for ICD10 Edit
      //DM.QrySearch3.SQL.Add('select text_desc,kind_no from leave_diag where fee_no='+Qt(GetFeeNo)+' and cncl_flag=''N'' order by seq_no');
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
        FrmEMRRecord.mymemo.Add('※'+CharAdd('離院診斷碼',' ',12)+'診斷名稱');
      WHILE NOT DM.QrySearch3.Eof DO
      BEGIN
        if trim(dm.QrySearch3.FieldByName('kind_no').AsString)= '0' then
          FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QrySearch3.FieldByName('icd_code').AsString),' ',12)+ trim(dm.QrySearch3.FieldByName('text_desc').AsString)) //診斷
        else
          FrmEMRRecord.mymemo.Add(spc+trim(dm.QrySearch3.FieldByName('text_desc').AsString));
        DM.QrySearch3.Next;
      END;
      }
      DM.QrySearch3.SQL.Add('select a.opd_date,a.fee_no,a.seq_no,trim(a.icd_code)||''_''||b.eng_full_desc icd_code,''0'' as kind_no ');
      DM.QrySearch3.SQL.Add('from order_icd_code a ');
      DM.QrySearch3.SQL.Add('left join icd_code_basic b on b.icd_code=a.icd_code ');
      DM.QrySearch3.SQL.Add('where order_kind=''EPD'' and opd_date='+qt(GetEpdDate)+' and fee_no='+Qt(GetFeeNo)+' and order_type=''CPD'' ');
      DM.QrySearch3.SQL.Add('union all ');
      DM.QrySearch3.SQL.Add('select order_date,fee_no,seq_no,text_desc,kind_no from leave_diag where cncl_flag=''N'' and kind_no=''2'' and fee_no='+Qt(GetFeeNo)+' and order_date ='+qt(GetEpdDate));
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
      begin
        FrmEMRRecord.mymemo.Add('※'+CharAdd('離院診斷碼',' ',12)+'診斷名稱');
        name_val.Clear;
      end;
      WHILE NOT DM.QrySearch3.Eof DO
      BEGIN
        if trim(dm.QrySearch3.FieldByName('kind_no').AsString)= '0' then
        begin
          name_val := SliptStr(54,trim(FulltoHalf(ReturnName(trim(dm.QrySearch3.FieldByName('icd_code').AsString)))));
          for i := 0 to name_val.Count-1 do
          begin
            if i = 0 then
              FrmEMRRecord.mymemo.Add(spc+CharAdd(ReturnId(trim(dm.QrySearch3.FieldByName('icd_code').AsString)),' ',12)+ CharAdd(name_val.Strings[i],' ',54)) //診斷
            else
              FrmEMRRecord.mymemo.Add(spc+CharAdd(' ',' ',12)+ CharAdd(name_val.Strings[i],' ',54)) //診斷
          end;
        end
        else
          FrmEMRRecord.mymemo.Add(trim(dm.QrySearch3.FieldByName('icd_code').AsString));
        DM.QrySearch3.Next;
      END;

      //完診(病人動向)
      DM.QrySearch3.Close;
      DM.QrySearch3.SQL.Clear;
      DM.QrySearch3.SQL.Add('select care from epd_his where fee_no='+Qt(GetFeeNo)+' and epd_his.epd_date='+qt(GetEpdDate));
      DM.QrySearch3.Open;
      if not DM.QrySearch3.IsEmpty then
      begin
        if trim(getexthospName(trim(DM.QrySearch3.fieldbyname('care').AsString)))<> '' then
          FrmEMRRecord.MYMEMO.Add('※離院方式 :'+getexthospName(trim(DM.QrySearch3.fieldbyname('care').AsString)));
      end;
      //FrmEMRRecord.mymemo.Add(CharAdd('-','-',40));
      FrmEMRRecord.mymemo.Add(CharAdd('-','-',80));
      FrmEMRRecord.mymemo.Add('※時間:'+ROCDate(ROCToDate(Trim(dm.QryTemp.FieldByName('UPD_DATE').AsString)),'/')+' '+ROCTimes(ROCToTime(Trim(dm.QryTemp.FieldByName('UPD_TIME').AsString)),':')+
                            ' 開單:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('ORDER_DOC').AsString))+'/主治:'+GETDOCNAME(Trim(dm.QryTemp.FieldByName('VS_DOC').AsString))+'醫師');
      //病人檢驗報告資料
      spc := '  ';
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Clear;
      DM.QryTemp.SQL.Add('select (Select Trim(Code_oneName) from COMPARE_CODE_BASIC b where b.code_one=a.exper_class and ipd_related=''L1'') as TME,');
      DM.QryTemp.SQL.Add('Trim(a.r_item_name) as ITEM,Trim(a.result_date_t) as DATAT,Trim(a.result_data_q) as DATAQ,a.result_flag ');
      DM.QryTemp.SQL.Add('from lab_data a where a.LAB_no IN(select  sp_no  from Lab_list where fee_no='+Qt(GetFeeNo)+') ORDER BY 1');
      DM.QryTemp.Open;
      IF NOT DM.QryTemp.IsEmpty THEN
      BEGIN
        FrmEMRRecord.mymemo.Add('◎'+'檢驗報告');
        FrmEMRRecord.mymemo.Add(spc+CharAdd('組別',' ',10)+CharAdd('項目',' ',32)+CharAdd('定性',' ',15)+CharAdd('定量',' ',15)+'結果');
        FrmEMRRecord.mymemo.Add(spc+'-----------------------------------------------------------------------------');
        WHILE NOT DM.QryTemp.Eof DO
        BEGIN
          FrmEMRRecord.mymemo.Add(spc+CharAdd(trim(dm.QryTemp.FieldByName('TME').AsString),' ',10)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('ITEM').AsString),' ',32)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('DATAT').AsString),' ',15)+
                                         CharAdd(trim(dm.QryTemp.FieldByName('DATAQ').AsString),' ',15)+
                                         trim(dm.QryTemp.FieldByName('result_flag').AsString));
          DM.QryTemp.Next;
        END;
      END;
      //列印醫師
      //FrmEMRRecord.QRLabel17.Caption := '列印醫師 : '+ GETDOCNAME(getUserId);
      //FrmEMRRecord.QRLbprintdoc.Caption := '列印醫師 : '+ GETDOCNAME(getUserId);
      //抓印表機
      reg := TRegistry.Create;
      reg.RootKey := HKEY_CURRENT_USER;
      if reg.OpenKey('\Software\Microsoft\Windows NT\CurrentVersion\Windows\', true) then
      begin
        defPrint := reg.ReadString('Device');
        for i := 0 to printer.Printers.Count -1 do
        begin
          if UpperCase(printer.Printers.Strings[i]) = UpperCase(SetSys.ReadString('SYSTEM','PRINTA4','')) then
          begin
            reg.DeleteKey('Device');
            reg.WriteString('Device',printer.Printers.Strings[i]+',winspool,Ne02:');
          end;
        end;
      end;
      //
      FrmEMRRecord.PrepareSQL(kind);
      if assigned(FrmEMRRecord) then
        FrmEMRRecord := nil;
      reg.DeleteKey('Device');
      reg.WriteString('Device',DefPrint);
      Reg.CloseKey;
      Reg.Free;
    end
    else
      ShowMessage('無病歷資料');
  end;

end;







procedure selfClearSG(SG: TStringGrid);
var
  i, j: integer;
begin
  for i := 0 to SG.RowCount-1 do
  begin
    for j := 0 to SG.ColCount-1 do
      SG.Cells[j,i] := '';
  end;
  SG.RowCount := 1;
end;

 {  BODY_HIGH//身高
    BODY_WEIGHT//體重
    TEMPERATURE//溫度
    SPHYGMUS//心跳
    SYSTOLIC_PRESSURE//血壓
    DIASTOLIC_PRESSURE//血壓
    HEAD_LEN//頭圍
    WAIST_LEN//胸圍
    inserbioinfomation(wh,eh,TEMPERATURE,sp,sy,di: string)}
function inserbioinfomation(wh,eh,TEMPERATURE,sp,sy,di,dt: string):Boolean;
var
    Qry: TADOQuery;
    a: Extended;
    naflag: string;
begin
  Result := true;
  naflag := 'N';
  if not TryStrToFloat(wh,a) then
  begin
    wh := '';
    naflag := 'B'
  end;
  if not TryStrToFloat(eh,a) then
  begin
    eh := '';
    naflag := 'A';
  end;

  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('select fee_no,NA_NOTE from bio_information_log where SOUR_AP=''TRIAGE'' and fee_no='+Qt(GetFeeNo)+' and NA_NOTE='+qt(dt));
  Qry.Open;
  if Qry.IsEmpty then
  begin
    try
      DM.ADOLink.BeginTrans;
      with Qry do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Insert into BIO_INFORMATION_LOG(SOURCE_KIND,FEE_NO,CHR_NO,SOUR_AP,BODY_HIGH,BODY_WEIGHT,TEMPERATURE,SYSTOLIC_PRESSURE,DIASTOLIC_PRESSURE,sphygmus,HEAD_LEN,WAIST_LEN,UPD_DATE,UPD_TIME,UPD_OPER,NA_flag,NA_NOTE)');
        SQL.Add('values(''E'','+Qt(GetFeeNo)+','+Qt(GetChrNo)+',''TRIAGE'','+Qt(eh)+','+Qt(wh)+','+Qt(TEMPERATURE)+','+Qt(sy)+','+Qt(di)+','+Qt(sp)+','+Qt(''));
        SQL.Add(','+Qt('')+','+Qt(RocDate(now,''))+','+Qt(RocTimes(now,''))+','+Qt(getUserId)+','+Qt(naflag)+','+Qt(dt)+')');
        ExecSQL;
      end;
      DM.ADOLink.CommitTrans;
      freeandnil(qry);
    except
      DM.ADOLink.RollbackTrans;
      freeandnil(qry);
    end;
  end;
end;

Function eCcr(Age: integer;MED_LIST,UD_DOSE,CIR_CODE,PATH_CODE,MED_TOTAL,MED_DAYS: STRING;Var flag: Boolean):string;
  function scrreplc(scrdata: string):string;
    var
      mystr: string;
  begin
    mystr := '';
    mystr := StringReplace(scrdata,' ','',[rfReplaceAll]);
    mystr := StringReplace(scrdata,'mg/dL','',[rfReplaceAll]);
    mystr := StringReplace(scrdata,'mg/dl','',[rfReplaceAll]);
    Result := mystr;
  end;
var
  wh, ht, scr, ccr, IBW, ABW,tmw,tmh : Extended;
  Qry: TADOQuery;
  scrdate, getwh, msg,renal_option,renal_text: string;
begin
  {參數取得 1.身高取一年內最接近檢驗值IBW、
            2.體重取一年內最接近檢驗值ABW、
            3.血清肌酐酸值scr取6個月內
            4.ABW <=  130% IBW，則Mass = ABW ；ABW > 130% IBW，則Mass = IBW + 0.4 (ABW - IBW) ； 若無身高，Mass = ABW
            5.無年齡、性別、體重、檢驗(scr)資料，或其他原因導致eCCr無法計算，系統bypass此檢核}
  Result := '';
  scrdate := '';
  scr := 0;
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    //取檢驗值
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select Hosp_code from hosp_basic');
    Qry.Open;
    if '1301200010' = trim(qry.FieldByName('Hosp_code').AsString) then
    begin
      //w
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('select trim(EXPER_DATA2) data ,lpad(trim(EXPER_DATE),7,0) sdate');
      Qry.SQL.Add('  from exper_sign where CHR_NO = '+Qt(GetChrNo)+' and GROUP_CODE = ''F09015C'' ');
      Qry.SQL.Add('   and report_no = (select max(report_no) from exper_sign where CHR_NO = '+Qt(GetChrNo)+' and GROUP_CODE = ''F09015C'')');
      Qry.Open;
      if not Qry.IsEmpty then
        if ((Now-365) <= ROCToDate(Qry.fieldbyname('sdate').AsString)) then //判斷是否超過一年
        begin
          scr := Qry.fieldbyname('data').AsFloat;
          scrdate := Qry.fieldbyname('sdate').AsString;
        end;
    end
    else if '1331040513' = trim(qry.FieldByName('Hosp_code').AsString) then
    begin
      //S
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('select  a.value data, a.b_date sdate from inp.labresult@shhdb_links a, inp.labresult_bound@shhdb_links b ');
      Qry.SQL.Add(' where a.chr_no = '+Qt(GetChrNo)+' and a.chr_no = b.chr_no and a.kind = b.kind and a.r_item = b.r_item ');
      Qry.SQL.Add('   and a.tube_no = b.tube_no and a.r_item in (''010801'',''11A201'') order by sdate desc');
      Qry.Open;
      if not Qry.IsEmpty then
        if ((Now-365) <= ROCToDate(Qry.fieldbyname('sdate').AsString)) then //判斷是否超過一年
        begin
          scr := StrToFloat(scrreplc(Qry.fieldbyname('data').AsString));
          scrdate := Qry.fieldbyname('sdate').AsString;
        end;
    end
    else if '1301170017' = trim(qry.FieldByName('Hosp_code').AsString) then
    begin
      //T
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('Select a.b_date sdate, a.value data from inp.labresult a, inp.labresult_bound b');
      Qry.SQL.Add(' where a.chr_no = '+Qt(GetChrNo)+' and a.chr_no = b.chr_no and a.kind = b.kind and a.r_item = b.r_item ');
      Qry.SQL.Add('   and a.tube_no = b.tube_no and a.kind in (''01'', ''11'') and a.r_item in (''11A201'', ''010801'', ''01F501'', ''01Z301'') order by a.b_date desc');
      Qry.Open;
      if not Qry.IsEmpty then
        if ((Now-365) <= ROCToDate(Qry.fieldbyname('sdate').AsString)) then //判斷是否超過一年
        begin
          scr := StrToFloat(scrreplc(Qry.fieldbyname('data').AsString));
          scrdate := Qry.fieldbyname('sdate').AsString;
        end;
    end;

    //身高 體重
    if scrdate <> '' then
    begin
      getwh := '';
      //Qry.Close;
      //Qry.SQL.Clear;             //is_number(body_high)   is_number(body_weight)
      //Qry.SQL.Add('SELECT fee_no,body_high as ht,body_weight as wh,(to_date(to_number(upd_date)+19110000,''YYYYMMDD'') ');
      //Qry.SQL.Add(' - to_date(to_number(' + qt(scrdate) + ')+19110000,''YYYYMMDD'')) as diff_date ');
      //Qry.SQL.Add(', Rank() Over( partition by chr_no Order by abs(to_date(to_number(upd_date)+19110000,''YYYYMMDD'')');
      //Qry.SQL.Add(' - to_date(to_number(' + qt(scrdate) + ')+19110000,''YYYYMMDD'')),upd_date desc ) as rank_num ');
      //Qry.SQL.Add(' FROM bio_information_log where chr_no=' + qt(GetChrNo));
      //Qry.SQL.Add('and upd_date between to_number(to_char(add_months(to_date(to_number(' + qt(GetEpdDate) + ')+19110000,''YYYYMMDD''),-12),''YYYYMMDD''))-19110000 and ' + qt(GetEpdDate));
      //qry.Open;
      DM.QryTemp.Close;
      DM.QryTemp.SQL.Text :='SELECT fee_no,body_high as ht,body_weight as wh from bio_information_log where chr_no='+ qt(GetChrNo)+' order by upd_date,upd_time';
      DM.QryTemp.Open;
      while not DM.QryTemp.Eof do
      begin
        TryStrToFloat(DM.QryTemp.FieldByName('ht').AsString,tmh) ;
        if (tmh > 0) and (pos('H',getwh) <= -1) then
        begin
          ht :=  DM.QryTemp.FieldByName('ht').AsInteger;
          getwh := getwh + 'H';
        end;

        TryStrToFloat(DM.QryTemp.FieldByName('wh').AsString,tmw);
        if (tmw > 0) and (pos('W',getwh) <= 0) then
        begin
          wh :=  DM.QryTemp.FieldByName('wh').AsInteger;
          getwh := getwh + 'W';
        end;

        if length(getwh) = 2 then
          Break;

        DM.QryTemp.Next;
      end;
    end;

    if (scr = 0) or (wh = 0 ) then
    begin
      //by pass
    end
    else
    begin
      //計算
      if ht > 50 then
        if Getsex01 = '1' then
          IBW := (ht - 80) * 0.7  //男性 IBW=(height - 80) * 0.7
        else
          IBW := (ht - 70) * 0.6; //女性 IBW=(height - 70) * 0.6

      ABW := wh;
      if ABW <= (IBW * 1.3) then //ABW > 130% IBW，則Mass = IBW + 0.4 (ABW - IBW)。
        ABW := IBW + 0.4;
      if Getsex01 = '1' then  //(140-Age)*Mass(in kilograms)*[0.85 if Female]
        ccr :=((140-Age) * ABW) / (72 * scr)
      else
        ccr :=((140-Age) * ABW * 0.85) / (72 * scr);

      //eCcr cut point1~5比對
      Qry.Close;
      Qry.SQL.Clear;
      Qry.SQL.Add('select med_code,alise_desc,renal_line1,renal_line2,renal_line3,renal_line4,');
      Qry.SQL.Add('renal_text1,renal_text2,renal_text3,renal_text4,renal_text5,renal_option1,');
      Qry.SQL.Add('renal_option2,renal_option3,renal_option4,renal_option5 from med_basic where med_code ='+qt(MED_LIST));
      qry.Open;
      while not qry.Eof do
      begin
        renal_option := '0';
        renal_text   := '0';
        if (ccr < qry.FieldByName('renal_line1').AsInteger) and (qry.FieldByName('renal_line1').AsInteger > 0)then
        begin
          if qry.FieldByName('renal_option1').AsString <> '1'  then
          begin
            if qry.FieldByName('renal_option1').AsString = '3' then
              flag := false;
            msg := msg + '藥品：' + qry.FieldByName('alise_desc').AsString + #10 + 'eCcr :' +qry.FieldByName('renal_text1').AsString;
            renal_option := qry.FieldByName('renal_option1').AsString;
            renal_text   := qry.FieldByName('renal_text1').AsString;
          end;
        end
        else if (ccr >= qry.FieldByName('renal_line2').AsInteger) and (ccr < qry.FieldByName('renal_line2').AsInteger) and (qry.FieldByName('renal_line2').AsInteger > 0) then
        begin
          if qry.FieldByName('renal_option2').AsString <> '1'  then
          begin
            if qry.FieldByName('renal_option2').AsString = '3' then
              flag := false;
            msg := msg + '藥品：' + qry.FieldByName('alise_desc').AsString + #10 + 'eCcr :' +qry.FieldByName('renal_text2').AsString;
            renal_option := qry.FieldByName('renal_option2').AsString;
            renal_text   := qry.FieldByName('renal_text2').AsString;
          end;
        end
        else if (ccr >= qry.FieldByName('renal_line3').AsInteger) and (ccr < qry.FieldByName('renal_line3').AsInteger) and (qry.FieldByName('renal_line3').AsInteger > 0) then
        begin
          if qry.FieldByName('renal_option3').AsString <> '1'  then
          begin
            if qry.FieldByName('renal_option3').AsString = '3' then
              flag := false;
            msg := msg + '藥品：' + qry.FieldByName('alise_desc').AsString + #10 + 'eCcr :' +qry.FieldByName('renal_text3').AsString;
            renal_option := qry.FieldByName('renal_option3').AsString;
            renal_text   := qry.FieldByName('renal_text3').AsString;
          end;
        end
        else if (ccr >= qry.FieldByName('renal_line4').AsInteger) and (ccr < qry.FieldByName('renal_line4').AsInteger) and (qry.FieldByName('renal_line4').AsInteger > 0) then
        begin
          if qry.FieldByName('renal_option4').AsString <> '1'  then
          begin
            if qry.FieldByName('renal_option4').AsString = '3' then
              flag := false;
            msg := msg + '藥品：' + qry.FieldByName('alise_desc').AsString + #10 + 'eCcr :' +qry.FieldByName('renal_text4').AsString;
            renal_option := qry.FieldByName('renal_option4').AsString;
            renal_text   := qry.FieldByName('renal_text4').AsString;
          end;
        end
        else if (ccr > qry.FieldByName('renal_line4').AsInteger) and (qry.FieldByName('renal_line4').AsInteger > 0) then// >=60
        begin
          if qry.FieldByName('renal_option5').AsString <> '1'  then
          begin
            if qry.FieldByName('renal_option5').AsString = '3' then
              flag := false;
            msg := msg + '藥品：' + qry.FieldByName('alise_desc').AsString + #10 + 'eCcr :' +qry.FieldByName('renal_text5').AsString;
            renal_option := qry.FieldByName('renal_option5').AsString;
            renal_text   := qry.FieldByName('renal_text5').AsString;
          end;
        end;
        //inster into log
        if renal_text <> '0' then
        begin
          DM.ADOLink.BeginTrans;
          try
            DM.QryInsert.Close;
            DM.QryInsert.SQL.Add('insert into Renal_log(BED_NO,CHR_NAME,CHR_NO,fee_no,');
            DM.QryInsert.SQL.Add('CHR_OLD,CHR_BIRTHDAY,SEX,MED_CODE,MED_DESC,UD_DOSE,MED_UNIT,');
            DM.QryInsert.SQL.Add('CIR_CODE,PATH_CODE,START_DATE,MED_TOTAL,MED_DAYS_TOTAL,LAB_DATE,');
            DM.QryInsert.SQL.Add('SCR,CLCR,ORDER_DR,renal_text,renal_option,med_sdate,med_edate) ');
            DM.QryInsert.SQL.Add('values('+qt('')+','+qt(GetPatName)+','+qt(GetChrNo)+','+qt(GetFeeNo)+',');
            DM.QryInsert.SQL.Add(qt(FloatToStr(Age))+','+qt(GetBirth)+','+qt(Getsex01)+','+qt(trim(qry.FieldByName('med_code').AsString))+','+qt(trim(qry.FieldByName('alise_desc').AsString))+','+qt(UD_DOSE)+','+qt('')+',');
            DM.QryInsert.SQL.Add(qt(CIR_CODE)+','+qt(PATH_CODE)+','+qt(ROCDate(now,''))+','+qt(MED_TOTAL)+','+qt(MED_DAYS)+','+qt(scrdate)+',');
            DM.QryInsert.SQL.Add(qt(FloatToStr(scr))+','+qt(FloatToStr(ceil(ccr)))+','+qt(getUserId)+','+qt(renal_text)+','+qt(renal_option)+','+qt(ROCDate(now,''))+','+qt('')+')' );
            DM.QryInsert.ExecSQL;
            DM.ADOLink.CommitTrans;
          except
            DM.ADOLink.RollbackTrans;
          end;
        end;
        Qry.Next;
      END;
      Result :=  msg;
    end;
    freeandnil(qry);
  except
    freeandnil(qry);
  end;
end;

Function strComparing(STR, STR1 :string):Boolean;
VAR
  S: STRING;
begin
  Result := False;
  if Str <> '' then
  begin
    while not (Str='') do
    begin
      IF UpperCase(TRIM(ReturnId(Str)))= UpperCase(STR1) THEN
      BEGIN
        Result := True;
        Break;
      END;
      Str := ReturnName(Str);
    end;
  end;
End;

function checkicd9(icd9: string):Boolean;
var
  Qry : TADOQuery;
begin
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select * from icd9_basic where icd9_code='+Qt(icd9));
    Qry.Open;
    if not Qry.IsEmpty then
      Result := True
    else
      Result := False;
  finally
    FreeAndNil(Qry);
  end;
end;

function checkicd10(icd10: string):Boolean;
var
  Qry : TADOQuery;
begin
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select * from  icd_code_basic where icd_code='+Qt(icd10));
    Qry.Open;
    if not Qry.IsEmpty then
      Result := True
    else
      Result := False;
  finally
    FreeAndNil(Qry);
  end;
end;

function emergencydeptlis(dept, listYN: string):string;
var
  Str,Str1,inlist : String;
begin
  inlist := 'N';
  Str := SetSys.ReadString('SYSTEM','REGDEPT','');
  Str1 := '';
  while not (trim(Str)='') do
  begin
    if dept = ReturnId(Str) then
      inlist := 'Y';
    Str1 := Str1+ReturnId(Str)+';';
    Str := ReturnName(str);
  end;
  if listYN = 'N' then
    Result := inlist
  else
  begin
    Str1 := copy(Str1,1,Length(Str1)-1);
    Result := Qts(Str1);
  end;
end;
procedure wratmajortime(time_type:string);
var
  Qry : TADOQuery;
  sno,sql : string;
begin
  sno := '';
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    sql := getMAJOR_sql(10);
    SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
    Qry.Close;
    Qry.SQL.Text := sql;
    Qry.Open;
    if trim(Qry.FieldByName('SEQ_NO').AsString) <> '' then
      sno := IntToStr(Qry.FieldByName('SEQ_NO').AsInteger + 1)
    else
      sno := '1';
    sql := getMAJOR_sql(11);
    SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
    SetParamter(sql,'$TIME_TYPE$',QT(time_type));
    Qry.Close;
    Qry.SQL.Text := sql;
    Qry.Open;
    if not Qry.IsEmpty then
    begin//update
      sql := getMAJOR_sql(13);
      SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
      SetParamter(sql,'$TIME_TYPE$',QT(time_type));
      SetParamter(sql,'$RECORD_DATE$',QT(ROCDate(Now,'')));
      SetParamter(sql,'$RECORD_TIME$',QT(ROCTime(Now,'')));
      SetParamter(sql,'$SEQ$',sno);
      Qry.Close;
      Qry.SQL.Text := sql;
      DM.ADOLink.BeginTrans;
      Qry.ExecSQL;
      DM.ADOLink.CommitTrans;
    end
    else
    begin//inster
      sql := getMAJOR_sql(12);
      SetParamter(sql,'$SEQ$',sno);
      SetParamter(sql,'$CHR_NO$',QT(GetChrNo));
      SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
      SetParamter(sql,'$TIME_TYPE$',QT(time_type));
      SetParamter(sql,'$RECORD_DATE$',QT(ROCDate(Now,'')));
      SetParamter(sql,'$RECORD_TIME$',QT(ROCTime(Now,'')));
      SetParamter(sql,'$DOC_CODE$',QT(getUserId));
      Qry.Close;
      Qry.SQL.Text := sql;
      DM.ADOLink.BeginTrans;
      Qry.ExecSQL;
      DM.ADOLink.CommitTrans;
    end;
  finally
    FreeAndNil(Qry);
  end;
end;


procedure ClearPatBed(sfee_no: String);    
begin
  try
    DM.ADOLink.BeginTrans;
    with DM.QryUpdate do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Update OPD_BASIC set EPD_BED='''' Where fee_no='+Qt(sfee_no));
      execsql;
      Close;
      SQL.Clear;
      SQL.Add('Update OPD_BASIC1 set EPD_BED='''',EPD_AREA='''' Where fee_no='+Qt(sfee_no));
      Execsql;
      Close;
      SQL.Clear;
      SQL.Add('Update BED_AREA set FEE_NO='''',INAREA='''' Where fee_no='+Qt(sfee_no));
      Execsql;
    end;
    DM.ADOLink.CommitTrans
  except
    DM.ADOLink.RollbackTrans;
  end;
end;


function sqlsheetno:string;
var
  Qry : TADOQuery;
begin
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    Qry.Close;
    Qry.SQL.Clear;
    qry.SQL.Add('select max(to_number(a.seq))as aa,max(b.allorder_no) as bb from epd_all_order a,epd_record b ');
    qry.SQL.Add('where a.fee_no=b.fee_no and a.fee_no='+Qt(GetFeeNo)+' and a.order_date='+qt(GetEpdDate));
    Qry.Open;
    if Qry.fieldbyname('aa').AsString >= Qry.fieldbyname('bb').AsString then
      Result := GetFeeNo + AddChar(Qry.fieldbyname('aa').AsString,'0',4)
    else
      Result := GetFeeNo + AddChar(Qry.fieldbyname('bb').AsString,'0',4);
  finally
    FreeAndNil(Qry);
  end;
end;

function Loadtxtsql(fld:string):string;
var
  SQLsT: TStringList;
  FIELNAME :STRING;
begin
  FIELNAME := ExtractFileDir(Application.ExeName)+'\'+fld;
  if FileExists(FIELNAME) then
  begin
    SQLsT := TStringList.Create;
    try
      SQLsT.LoadFromFile(FIELNAME);
      Result := SQLsT.text;
    finally
      SQLsT.Free;
    end;
  end;
end;

function getpatdisccode:string;
var
  Qry : TADOQuery;
begin
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    Qry.Close;
    Qry.SQL.Clear;
    qry.SQL.Add('select disc_code from chr_basic where chr_no='+Qt(GetChrNo));
    Qry.Open;
    Result := trim(Qry.fieldbyname('disc_code').AsString);
  finally
    FreeAndNil(Qry);
  end;
end;

Function dtl_log(KIND,MAJOR_NO,MAJOR_NAME,incident_dt:string):String;
var
  sql,DTL_NO,sdate,stime :string;
  vh,vs : integer;
begin
  DTL_NO := '0';
  vh := 0;
  vs := 0;
  sql := getMAJOR_sql(2);
  SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  DTL_NO := NullStrTo(DM.QryTemp.FieldByName('SEQ_NO').AsString,'0');
  DTL_NO := IntToStr(StrToInt(DTL_NO)+1);

  sql := getMAJOR_sql(0);//查詢
  SetParamter(sql,'$FEE_NO$',QT(GetFeeNo));
  SetParamter(sql,'$STATRDATE$',Qt(Minus_six_months_date));
  sql := sql + ' and kind='+qt(kind)+' and major_no= '+Qt(MAJOR_NO);
  if incident_dt<>'' then
  begin
    vh :=(MinutesBetween(now,ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)))) div 60;
    vs :=(MinutesBetween(now,ROCToDate(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000))+ROCToTime(copy(trim(incident_dt),9,4)))) mod 60;
  end;

  sdate := ROCDate(Now,'');
  stime := ROCTimes(Now,'');

  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Text := sql;
  DM.QryTemp.Open;
  if DM.QryTemp.IsEmpty then
  begin
    sql := getMAJOR_sql(5);//insert
    SetParamter(sql,'$SEQ_NO$',DTL_NO);
    SetParamter(sql,'$KIND$',qt(KIND ));
    SetParamter(sql,'$MAJOR_NO$',MAJOR_NO);
    SetParamter(sql,'$MAJOR_NAME$',qt(MAJOR_NAME));
    SetParamter(sql,'$FEE_NO$',qt(GetFeeNo));
    SetParamter(sql,'$START_DATE$',qt(sdate));
    SetParamter(sql,'$START_TIME$',qt(stime));
    SetParamter(sql,'$END_DATE$',qt(''));
    SetParamter(sql,'$END_TIME$',qt(''));
    SetParamter(sql,'$TIME_SUM$',qt(AddChar(IntToStr(vh),'0',2)+':'+AddChar(IntToStr(vs),'0',2)));
    SetParamter(sql,'$DOC_CODE$',qt(getUserId));
    SetParamter(sql,'$START_FLAG$',qt('Y'));
    SetParamter(sql,'$NOTE$',qt(''));
    if trim(incident_dt) <> '' then
    begin
      SetParamter(sql,'$OCCUR_DATE$',qt(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000)));
      SetParamter(sql,'$OCCUR_TIME$',qt(copy(trim(incident_dt),9,4)));
    end
    else
    begin
      SetParamter(sql,'$OCCUR_DATE$',qt(''));
      SetParamter(sql,'$OCCUR_TIME$',qt(''));
    end;
    DM.QryInsert.Close;
    DM.QryInsert.SQL.Clear;
    dm.QryInsert.SQL.Text := SQL;
  end
  else
  begin
    sql := getMAJOR_sql(7);//update
    SetParamter(sql,'$START_DATE$',qt(sdate));
    SetParamter(sql,'$START_TIME$',qt(stime));
    SetParamter(sql,'$END_DATE$',qt(''));
    SetParamter(sql,'$END_TIME$',qt(''));
    SetParamter(sql,'$TIME_SUM$',qt(AddChar(IntToStr(vh),'0',2)+':'+AddChar(IntToStr(vs),'0',2)));
    SetParamter(sql,'$DOC_CODE$',qt(getUserId));
    SetParamter(sql,'$START_FLAG$',qt('Y'));
    SetParamter(sql,'$NOTE$',qt(''));
    if trim(incident_dt) <> '' then
    begin
      SetParamter(sql,'$OCCUR_DATE$',qt(IntToStr(StrToInt(copy(trim(incident_dt),1,8))-19110000)));
      SetParamter(sql,'$OCCUR_TIME$',qt(copy(trim(incident_dt),9,4)));
    end
    else
    begin
      SetParamter(sql,'$OCCUR_DATE$',qt(''));
      SetParamter(sql,'$OCCUR_TIME$',qt(''));
    end;
    SetParamter(sql,'$FEE_NO$',qt(GetFeeNo));
    SetParamter(sql,'$KIND$',qt(KIND));
    SetParamter(sql,'$MAJOR$',qt(MAJOR_NO));
    SetParamter(sql,'$MAJORNAME$',qt(MAJOR_NAME));
    DM.QryInsert.Close;
    DM.QryInsert.SQL.Clear;
    dm.QryInsert.SQL.Text := SQL;
  end;
  DM.ADOLink.BeginTrans;
  try
    DM.QryInsert.ExecSQL;
    Result := dateformat(1,Now)+ copy(stime,1,2)+'時'+copy(stime,3,2)+'分'+copy(stime,5,2)+'秒';
  except
    DM.ADOLink.RollbackTrans;
  end;
  DM.ADOLink.CommitTrans;
end;

Function MaxMedDays(selfins: string;sender:TObject;co:integer):integer;
var
  Qry : TADOQuery;
  qty,rowi : integer;
begin
  qty := 0;
  if sender is TStringGrid then//取畫面資料
  begin
    for rowi := 0 to TStringGrid(sender).RowCount-1 do
    begin
      if Trim(TStringGrid(sender).Cells[co,rowi]) <> '' then
      begin
        if qty < StrToInt(NullStrTo(Trim(TStringGrid(sender).Cells[co,rowi]),'0')) then
          qty := StrToInt(NullStrTo(Trim(TStringGrid(sender).Cells[co,rowi]),'0'));
      end;
    end;
  end;
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select order_days from epd_all_order where order_date='+Qt(GetEpdDate)+' and fee_no='+qt(GetFeeNo)+' and del_flag=''N'' and so_flag=''M''');
    if trim(selfins) <> '' then
      Qry.SQL.Add('and self_pay_flag='+Qt(selfins));
    Qry.Open;
    while not Qry.Eof do
    begin
      if qty < qry.FieldByName('order_days').AsInteger then
        qty := qry.FieldByName('order_days').AsInteger;
      qry.Next;
    end;
  finally
    FreeAndNil(Qry);
  end;
  Result := qty;
end;

Function ChkTraumaPapeOk(var messg:string;fee_no :string):Boolean;
var
  Qry : TADOQuery;
  firs,airway,finding,hr,pelvic,fast,gcs,ct,ed,pl: boolean;
begin
  firs    := False;
  airway  := False;
  finding := False;
  hr      := False;
  pelvic  := False;
  fast    := False;
  gcs     := False;
  ct      := False;
  ed      := False;
  pl      := False;
  Result  := False;
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  try
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('select * from EPD_TABULATION where kind=''FIRST_TRAUMA'' and fee_no='+Qt(fee_no)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+' and  allorder_no=(select max(allorder_no) from EPD_TABULATION where kind=''FIRST_TRAUMA'' and fee_no='+Qt(fee_no)+' and del_flag=''N'' and order_date ='+qt(GetEpdDate)+') ');
    Qry.SQL.Text;
    sql_Waiting_log('EPD_TABULATION',Qry.SQL.Text);
    Qry.Open;
    sql_Waiting_log('close EPD_TABULATION','');
    while not Qry.Eof do
    begin
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'A_03_01_2_0') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'A_03_02_2_0') then
        firs := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_03_02_2_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_03_04_2_0') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_03_07_2_0') then
        airway := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_04_32_2_0') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_04_04_2_0') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_04_05_2_0') then
        finding := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_05_02_3_0') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_05_03_3_1') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_05_04_3_1') then
        hr := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_05_09_2_0') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_05_10_2_0') then
        pelvic := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_05_07_2_0') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_05_08_2_0') then
        fast := True;
      if ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'B_06_02_3_0' then
        gcs := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_03_03_2_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_03_04_2_1') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_03_05_2_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_03_06_2_1') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_03_07_2_1') then
        ct := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_04_02_3_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_04_03_3_1') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_04_04_3_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_04_05_3_1') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_04_06_3_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_04_07_3_1')then
        ed := True;
      if (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_05_02_2_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_05_04_2_1') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_05_05_2_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_05_06_2_0') or
         (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_05_08_2_1') or (ReturnName(Trim(qry.fieldbyname('text').AsString)) = 'D_05_09_2_0')then
        pl := True;
      Qry.Next;
    end;
    if not firs then //20121120加註提示為勾選的項目
      messg := ' "First aid" or "Transferred from other hospital"'+#10#13;
    if not airway then
      messg := messg +' "Patent, with O2 mask," or "Endotracheal tube intubation,Fr." or "Surgical airway,Reason and method:"'+#10#13;
    if not finding then
      messg := messg +' "Breathing sound:normal or decrease, or crackles,'+#10#13;
    if not hr then
      messg := messg +' "HR:" or "Bp:" or "Pulse oximeter:"'+#10#13;
    if not pelvic then
      messg := messg +' "Pelvic stability:"Stable" or "Unstable"'+#10#13;
    if not fast then
      messg := messg +' FAST: "negative" or "positive"'+#10#13;
    if not gcs then
      messg := messg +' GCS:"'+#10#13;
    if not ct then
      messg := messg +' "CT scans" or "Angiography" or "MRI" or "Additional X-rays" or "Other:"'+#10#13;
    if not ed then
      messg := messg +' ED Diagnosis:" 1 or 2 or 3 or 4 or 5 or initial iss"';
    if not pl then
      messg := messg +' Plan: "Surgery:" or "ICU admission" or "Ward admission" or "Angioembolization:" or "Expire or AAD" or "Other:"';
    if trim(messg)<>'' then
      messg := ' 請確認下列項目是否有勾選'+#10#13+ messg;
    if (firs) and (airway) and (finding) and (hr) and (pelvic) and (fast) and (gcs) and (ct) and (ed) and (pl) then
      Result := True;
  finally
    FreeAndNil(Qry);
  end;
end;


Function stas(val :string):string;
var
  i : integer;
  s : string;
begin
  s := '';
  for i := 0 to epdstatus.Count -1 do
  begin
    if ReturnName(trim(epdstatus.Strings[i])) = trim(val) then
      s := ReturnId(trim(epdstatus.Strings[i]));
  end;
  Result := s;
End;

Function getipdthreeback(fee_no,chr_no:string):string;
VAR
  SQSTR : string;
  vh,sno : integer;
  Qry : TADOQuery;
Begin
  Qry := TADOQuery.Create(nil);
  Qry.Connection := DM.ADOLink;
  Qry.Close;
  Qry.SQL.Clear;
  Qry.SQL.Add('select * from EPDEXITBK_LOG where fee_no='+Qt(GetFeeNo)+' and OPD_DATE='+Qt(trim(GetEpdDate))+' and TYPE_D=''04'' and TYPE_M=''01''');
  sql_Waiting_log('open',Qry.SQL.Text);
  Qry.Open;
  sql_Waiting_log('close','');
  if Qry.IsEmpty then
  begin
    SQSTR := getlog_sql(17);//出院三日內反急診
    SetParamter(SQSTR,'$CHR_NO$',qt(chr_no));
    SetParamter(SQSTR,'$SDATE$',Qt(ROCDate(ROCToDate(GetEpdDate)-3,'')));
    SetParamter(SQSTR,'$NDATE$',qt(ROCDate(ROCToDate(GetEpdDate),'')));
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add(SQSTR);
    sql_Waiting_log('open',SQSTR);
    Qry.Open;
    sql_Waiting_log('close','');
    if not Qry.IsEmpty then
    begin
      vh := (MinutesBetween(ROCToDate(GetEpdDate),ROCToDate(trim(Qry.fieldbyname('cpd_date').AsString))+ROCToTime(trim(Qry.fieldbyname('cpd_time').AsString)))) div 60 ;
      if vh < 72 then
      begin
        Result := '此為出院三日內再急診個案';
        SQSTR := getlog_sql(26);
        SetParamter(SQSTR,'$FEE_NO$',Qt(Trim(GetFeeNo)));
        DM.QryTemp.Close;
        DM.QryTemp.SQL.Clear;
        DM.QryTemp.SQL.Text := SQSTR;
        sql_Waiting_log('open',SQSTR);
        DM.QryTemp.Open;
        sql_Waiting_log('close','');
        if DM.QryTemp.IsEmpty then
        begin
          DM.QryInsert.Close;
          DM.QryInsert.SQL.Clear;
          DM.QryInsert.SQL.Text :='select nvl(max(SEQ_NO),''0'') as seq_no from EPDEXITBK_LOG where fee_no='+qt(GetFeeNo);
          DM.QryInsert.Open;
          sno := DM.QryInsert.fieldbyname('seq_no').AsInteger;
          SQSTR := othe_HIS(3);
          SetParamter(SQSTR,'$SEQ_NO$',IntToStr(sno));
          SetParamter(SQSTR,'$OPD_DATE$',Qt(trim(GetEpdDate)));
          SetParamter(SQSTR,'$OPD_TIME$',Qt(Trim(GetEpdTime)));
          SetParamter(SQSTR,'$FEE_NO$',Qt(Trim(GetFeeNo)));
          SetParamter(SQSTR,'$CHR_NO$',Qt(Trim(GetChrNo)));
          SetParamter(SQSTR,'$PAT_NAME$',Qt(Trim(GetPatName)));
          SetParamter(SQSTR,'$DOC_CODE$',Qt(Trim(getUserId)));
          SetParamter(SQSTR,'$TYPE_D$',Qt('04'));
          SetParamter(SQSTR,'$TYPE_M$',Qt('01'));
          SetParamter(SQSTR,'$OLD_DATE$',Qt(Trim(Qry.fieldbyname('ipd_date').AsString)));
          SetParamter(SQSTR,'$OLD_TIME$',Qt(Trim(Qry.fieldbyname('ipd_time').AsString)));
          SetParamter(SQSTR,'$OLD_FEENO$',Qt(Trim(Qry.fieldbyname('fee_no').AsString)));
          SetParamter(SQSTR,'$EXIT_DATE$',Qt(Trim(Qry.fieldbyname('cpd_date').AsString)));
          SetParamter(SQSTR,'$EXIT_TIME$',Qt(Trim(Qry.fieldbyname('cpd_time').AsString)));
          SetParamter(SQSTR,'$CARE_REASON$',Qt('此為出院三日內再急診個案'));
          SetParamter(SQSTR,'$LOG_OPER$',Qt(getUserId));
          SetParamter(SQSTR,'$LOG_DATE$',Qt(ROCDate(Now,'')));
          SetParamter(SQSTR,'$LOG_TIME$',Qt(ROCTime(Now,'')));
          SetParamter(SQSTR,'$CARE$',Qt(' '));
          DM.QryInsert.Close;
          DM.QryInsert.SQL.Text := SQSTR;
          try
            DM.ADOLink.BeginTrans;
            DM.QryInsert.ExecSQL;
            DM.ADOLink.CommitTrans;
          except on E: Exception do
            begin
              sql_time_log('ExecSQL:',E.Message+SQSTR);
              DM.ADOLink.RollbackTrans;
            end;
          end;
        end;
      end
      else
        Result := '';
    end;
  end
  else
    Result := '';
  Qry.Close;
  freeAndNil(Qry);
End;

Function get24_48_72(fee_no,chr_no,opd_date,opd_time:string):string;
VAR
  SQSTR : string;
  vh : integer;
  TMPQ : TADOQuery;
Begin
  SQSTR := getlog_sql(16);
  SetParamter(SQSTR,'$CHR_NO$',qt(chr_no));
  SetParamter(SQSTR,'$FEE_NO$',qt(fee_no));
  SetParamter(SQSTR,'$SDATE$',Qt(ROCDate(ROCToDate(opd_date)-3,'')));
  SetParamter(SQSTR,'$NDATE$',qt(opd_date));
  SetParamter(SQSTR,'$REGDATE$',qt(opd_date+opd_time));
  TMPQ := TADOQuery.Create(NIL);
  TMPQ.Connection:= DM.ADOLink;
  try
    TMPQ.Close;
    TMPQ.SQL.Clear;
    TMPQ.SQL.Text := SQSTR;
    sql_Waiting_log('open',SQSTR);
    TMPQ.Open;
    sql_Waiting_log('close','');
    if not TMPQ.IsEmpty then
    begin
      vh := (MinutesBetween(ROCToDate(trim(opd_date))+ROCToTime(trim(opd_time)),ROCToDate(trim(TMPQ.fieldbyname('end_date').AsString))+ROCToTime(trim(TMPQ.fieldbyname('end_time').AsString)))) div 60 ;
      if vh <= 24 then
        Result := '24_'+ trim(TMPQ.fieldbyname('fee_no').AsString)
      else if (vh > 24) and ( vh <= 48) then
        Result := '48_'+ trim(TMPQ.fieldbyname('fee_no').AsString)
      else if (vh > 48)  and ( vh <= 72) then
        Result := '72_'+ trim(TMPQ.fieldbyname('fee_no').AsString)
      else
        Result := '';
    end;
  finally
    FreeAndNil(TMPQ);
  end;


End;



function GetMaxNo: Boolean;
var
  q_str : string;
  TMPQ : TADOQuery;
begin
  Result := True;
  TMPQ := TADOQuery.Create(NIL);
  TMPQ.Connection:= DM.ADOLink;
  TMPQ.Close;
  q_str := sql_str(6);
  SetParamter(q_str,':opd_date',qt(GetEpdDate));
  SetParamter(q_str,':fee_no',qt(getFeeNo));
  TMPQ.SQL.Text  := q_str;
  //DM.QrySearch.SQL.SaveToFile('D:\atest.txt');
  TMPQ.Open;
  try
    if not TMPQ.IsEmpty then
    begin
      RECORD_SEQ_no:= StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_SEQ_no').AsString),'0')); //EPD_RECORD(SEQ_NO)      == 10000 起編
      RECORD_no    := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_no').AsString),'0'));     //EPD_RECORD(allorder_no) == 1 起編
      epd_sheet_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('epd_sheet_no').AsString),'0'));  //epd_sheet(SHEET_NO)     == fee_no+4 碼序號 All_seq
      all_sheet_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_sheet_no').AsString),'0'));  //epd_all_order(sheeT_no) == 民國年+3 碼序號
      all_seq      := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq').AsString),'0'));       //epd_all_order(seq)      == 1 起編
      all_seq_no   := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq_no').AsString),'0'));    //epd_all_order(seq_no)   == 10000 起編

      if StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_SEQ_no').AsString),'0')) >= StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq_no').AsString),'0')) then
      begin
        RECORD_SEQ_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_SEQ_no').AsString),'0'));
      end
      else
      begin
        RECORD_SEQ_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq_no').AsString),'0'));
      end;
      IF StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq').AsString),'0')) >=  StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_no').AsString),'0')) THEN
      BEGIN
        all_seq := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq').AsString),'0'));
        RECORD_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq').AsString),'0'));
      END
      ELSE
      BEGIN
        all_seq := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_no').AsString),'0'));
        RECORD_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_no').AsString),'0'));
      END;
    end
    else
    begin
      RECORD_SEQ_no:= 10000;                                                                   //EPD_RECORD(SEQ_NO)      == 10000 起編
      RECORD_no    := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('RECORD_no').AsString),'0'));   //EPD_RECORD(allorder_no) == 1 起編
      epd_sheet_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('epd_sheet_no').AsString),'0'));//epd_sheet(SHEET_NO)     == fee_no+4 碼序號 All_seq
      all_sheet_no := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_sheet_no').AsString),'0'));//epd_all_order(sheeT_no) == 民國年+3 碼序號
      all_seq      := StrToInt(NullStrTo(Trim(TMPQ.FieldByName('all_seq').AsString),'0'));     //epd_all_order(seq)      == 1 起編
      //all_seq_no   := 1000;                                                                  //epd_all_order(SEQ_NO)   == 10000 起編
    end;
  except
    TMPQ.Free;
    Result := False;
  end;
  TMPQ.Free;
end;

Function GETPKG(keystr:string;var gcode:string):Boolean;
var
  tmpqry : TADOQuery;
begin
  pkgdtl := False;
  try
    tmpqry := TADOQuery.Create(nil);
    tmpqry.Connection := DM.ADOLink;
    Result := False;
    tmpqry.Close;
    tmpqry.SQL.Clear;
    //tmpqry.SQL.Add('SELECT * FROM ORDER_GRP_BASIC where Group_code='+qt(keystr));                                                                                                                                                                
    tmpqry.SQL.Add('SELECT * FROM ORDER_GRP_BASIC where ((dept_code=''ALL'' and user_id=''ALL'') or (dept_code='+Qt(GetUserDept)+' and user_id=''XXXXXX'') or (dept_code=''XXXX'' and  user_id='+Qt(getUserId)+')) and upper(Group_code) ='+Qt(UpperCase(keystr)));
    tmpqry.Open;
    if not tmpqry.IsEmpty then
    begin
      Result := True;
      gcode := trim(tmpqry.fieldbyname('group_code').AsString);
    End;
  finally
     FreeAndNil(tmpqry);
  end;
End;

function GetFileDate(const FileName: string; out Creation, LastAccess,
    LastWrite: TDateTime): Boolean;
var
  hFile: THandle;
  ftCreationUTC, ftLastAccessUTC, ftLastWriteUTC: TFileTime;
  ftCreationLocal, ftLastAccessLocal, ftLastWriteLocal: TFileTime;
  stCreationLocal, stLastAccessLocal, stLastWriteLocal: TSystemTime;
begin
  result:=false;
  hFile := CreateFile(PChar(FileName), GENERIC_READ, 0, nil,
  OPEN_EXISTING, FILE_FLAG_BACKUP_SEMANTICS, 0);
  if (hFile <> INVALID_HANDLE_VALUE) then
  begin
    try
      if GetFileTime(hFile, @ftCreationUTC, @ftLastAccessUTC, @ftLastWriteUTC) then
      begin
        if FileTimeToLocalFileTime(ftCreationUTC, ftCreationLocal)
           and FileTimeToLocalFileTime(ftLastAccessUTC, ftLastAccessLocal)
           and FileTimeToLocalFileTime(ftLastWriteUTC, ftLastWriteLocal) then
        begin
          if FileTimeToSystemTime(ftCreationLocal, stCreationLocal)
             and FileTimeToSystemTime(ftLastAccessLocal, stLastAccessLocal)
             and FileTimeToSystemTime(ftLastWriteLocal, stLastWriteLocal) then
          begin
            Creation := SystemTimeToDateTime(stCreationLocal);
            LastAccess := SystemTimeToDateTime(stLastAccessLocal);
            LastWrite := SystemTimeToDateTime(stLastWriteLocal);
            result:=true;
          end;
        end;
      end;
    finally
      CloseHandle(hFile);
    end;
  end;

end;

procedure sql_time_log(titl,Desc:string);
var
//  filehandle : integer;
  openfileName : TextFile;
//  inputdata : string;
begin
  Desc := titl + getChrNo +' / '+ Desc;
  try
    AssignFile(openfileName,ExtractFileDir(Application.ExeName)+'\ERS_ERROR_log.txt');
    if FileExists(ExtractFileDir(Application.ExeName)+'\ERS_ERROR_log.txt') then
      Append(openfileName)
    else
      Rewrite(openfileName);
    Writeln(openfileName, DateTimeToStr(Now) + Desc + #9);
    CloseFile(openfileName);
  except

  end;
end;

procedure sql_Waiting_log(titl,Desc:string);
var
  //filehandle : integer;
  openfileName : TextFile;
  //inputdata, ma : string;
begin
  IF WAITINGLOG = 'True' THEN
  BEGIN
    Desc := titl + getChrNo +' / '+ Desc;
    try
      AssignFile(openfileName,ExtractFileDir(Application.ExeName)+'\SQL_Waiting_log.txt');
      if FileExists(ExtractFileDir(Application.ExeName)+'\SQL_Waiting_log.txt') then
        Append(openfileName)
      else
        Rewrite(openfileName);
      Writeln(openfileName, DateTimeToStr(Now) + Desc + #9);
      CloseFile(openfileName);
    except

    end;
  END;
end;

procedure Bednotuse;
var
  usbed : TADOQuery;
begin
  usbed := TADOQuery.Create(nil);
  usbed.Connection := DM.ADOLink;
  usbed.Close;
  usbed.SQL.Clear;
  EPDBED.Clear;
  usbed.SQL.Add('select trim(bed_no)||''_''||trim(area_no) as bed_no from bed_area where nvl(Trim(fee_no),''N'') = ''N'' order by area_no, bed_no');
  sql_Waiting_log('open',usbed.SQL.Text);
  usbed.Open;
  sql_Waiting_log('close','');
  WHILE NOT usbed.Eof DO
  BEGIN
    EPDBED.Add(TRIM(usbed.FIELDBYNAME('BED_NO').AsString));
    usbed.Next;
  END;
  usbed.Close;
  FreeAndNil(usbed);
end;

function GetccbBed(Area:String):TStringList;
var
  i : integer;
begin
  Result := TStringList.Create;
  for i := 0 to EPDBED.Count -1 do
  begin
    if ReturnName(trim(EPDBED[i])) = trim(Area) then
      Result.Add(trim(EPDBED[i]));
  end;
end;

function GetAreaname(Bed,fee:String):string;
begin
  DM.QryTemp.Close;
  DM.QryTemp.SQL.Clear;
  DM.QryTemp.SQL.Add('select area_name from area_basic a,bed_area ');
  DM.QryTemp.SQL.Add('b where a.area_no=b.area_no and b.bed_no='+Qt(Bed)+' and b.fee_no='+Qt(fee));
  DM.QryTemp.Open;
  Result := DM.QryTemp.fieldbyname('area_name').AsString;
end;

function setstatus(fee_no,status,ill:string): String;
var
  sqlstr,ILL_NO,LEVE_SEQ,LEVE_NO,kind,name_date,ill_name,LIMIT_TIME : string;
  S_D,SNO,top_name : String;
begin
  //A:未到診 B:已報到 C:暫存 D:待完診 E:完診 F:已批價 G:已繳費 H:爽約 qt(stas('A')) 6:等報告 7:看報告 8:留觀 9:重症
  S_D := '';
  SNO := '0';
  if ill='D' then
  begin
    sqlstr := getlog_sql(10);
    SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
    SetParamter(sqlstr,'$status$',Qt(status));
    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Text := sqlstr;
    DM.QryUpdate.Open;
    IF TRIM(DM.QryUpdate.FIELDBYNAME('SEQ_NO').AsString)<> '' THEN
      SNO := TRIM(DM.QryUpdate.FIELDBYNAME('SEQ_NO').AsString);
    DM.ADOLink.BeginTrans;
    sqlstr := getlog_sql(3);
    SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
    SetParamter(sqlstr,'$CNCL_FLAG$',Qt('Y'));
    SetParamter(sqlstr,'$SEQ_NO$',SNO);
    SetParamter(sqlstr,'$N_DATE$','sysdate');
    DM.QryUpdate.SQL.Text := sqlstr;
    DM.QryUpdate.ExecSQL;
    DM.ADOLink.CommitTrans;
  end
  else if ill = 'I' then
  begin
    ILL_NO := '0';
    LEVE_SEQ := '0';
    LEVE_NO := '0';
    name_date := '';
    ill_name := '';
    LIMIT_TIME := '';
    sqlstr := getlog_sql(10);
    SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
    SetParamter(sqlstr,'$status$',Qt(status));
    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Text := sqlstr;
    DM.QryUpdate.Open;
    IF TRIM(DM.QryUpdate.FIELDBYNAME('SEQ_NO').AsString)<> '' THEN
      SNO := TRIM(DM.QryUpdate.FIELDBYNAME('SEQ_NO').AsString);
    sqlstr := getlog_sql(4);
    SetParamter(sqlstr,'$FEE_NO$',Qt(fee_no));
    SetParamter(sqlstr,'$STATUS$',Qt(status));
    SetParamter(sqlstr,'$ILL_NO$',ILL_NO);
    SetParamter(sqlstr,'$LEVE_SEQ$',LEVE_SEQ);
    SetParamter(sqlstr,'$LEVE_NO$',LEVE_NO);
    SetParamter(sqlstr,'$ILL_NAME$',qt(ill_name));
    SetParamter(sqlstr,'$UPD_DATE$',Qt(ROCDate(Now,'')));
    SetParamter(sqlstr,'$UPD_TIME$',Qt(ROCTimes(now,'')));
    SetParamter(sqlstr,'$S_DATE$','sysdate');
    SetParamter(sqlstr,'$kind$',qt(kind));
    SetParamter(sqlstr,'$LIMIT_TATOL$',qt('0'));
    SetParamter(sqlstr,'$NOTE$',Qt(top_name));
    SetParamter(sqlstr,'$LIMIT_TIME$',qt(LIMIT_TIME));
    SetParamter(sqlstr,'$SEQ_NO$',IntToStr(StrToInt(SNO)+1));
    SetParamter(sqlstr,'$CNCL_FLAG$',qt('N'));
    SetParamter(sqlstr,'$S_SUBDATE$','sysdate');
    DM.QryUpdate.SQL.Text := sqlstr;
    //DM.QryUpdate.SQL.SaveToFile('L:\status.txt');
    DM.ADOLink.BeginTrans;
    DM.QryUpdate.ExecSQL;
    DM.ADOLink.CommitTrans;
  end;

  if (status = stas('E')) or (status = stas('F')) or (status < stas('G'))  then
  begin
    sqlstr := getlog_sql(2);
    SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Text := sqlstr;
    DM.ADOLink.BeginTrans;
    try
      DM.QryUpdate.ExecSQL;
      DM.ADOLink.CommitTrans;
    except
      DM.ADOLink.RollbackTrans;
    end;
  end;
  if status > '5' then
  begin
    if status = '9' then
    begin
      ILL_NO := ReturnId(ill);
      LEVE_SEQ :=ReturnId(ReturnName(ill));
      LEVE_NO := ReturnId(ReturnName(ReturnName(ill)));
      kind := ReturnId(ReturnName(ReturnName(ReturnName(ill))));
      name_date := ReturnId(ReturnName(ReturnName(ReturnName(ReturnName(ill)))));
      ill_name := ReturnId(ReturnName(ReturnName(ReturnName(ReturnName(ReturnName(ill))))));
      LIMIT_TIME := ReturnId(ReturnName(ReturnName(ReturnName(ReturnName(ReturnName(ReturnName(ill)))))));
    end
    else if status = '8' then
    begin
      ILL_NO := '0';
      LEVE_SEQ := '0';
      LEVE_NO := '0';
      name_date := '';
      ill_name := 'OBS';
      LIMIT_TIME := '';
    end
    else
    begin
      ILL_NO := '0';
      LEVE_SEQ := '0';
      LEVE_NO := '0';
      name_date := '';
      ill_name := '';
      LIMIT_TIME := '';
    end;
    sqlstr := getlog_sql(10);
    SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
    SetParamter(sqlstr,'$status$',Qt(status));
    DM.QryUpdate.Close;
    DM.QryUpdate.SQL.Text := sqlstr;
    DM.QryUpdate.Open;
    IF TRIM(DM.QryUpdate.FIELDBYNAME('SEQ_NO').AsString)<> '' THEN
      SNO := TRIM(DM.QryUpdate.FIELDBYNAME('SEQ_NO').AsString);
    sqlstr := getlog_sql(1);
    SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
    SetParamter(sqlstr,'$status$',Qt(status));
    DM.QrySubTemp.Close;
    DM.QrySubTemp.SQL.Text := sqlstr;
    DM.QrySubTemp.Open;
    DM.ADOLink.BeginTrans;
    try
      if not DM.QrySubTemp.IsEmpty then
      begin
        if status = '9' then
        begin
          S_D := DM.QrySubTemp.FIELDBYNAME('S_DATE').AsString;
          top_name := trim(DM.QrySubTemp.FIELDBYNAME('NOTE').AsString);
        end
        else
        begin
          S_D := '';
          top_name := ' ';
        end;
        DM.QryUpdate.Close;
        sqlstr := getlog_sql(3);
        SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
        SetParamter(sqlstr,'$CNCL_FLAG$',Qt('Y'));
        SetParamter(sqlstr,'$SEQ_NO$',SNO);
        SetParamter(sqlstr,'$ILL_NAME$',Qt(ill_name));
        SetParamter(sqlstr,'$N_DATE$','sysdate');
        DM.QryUpdate.SQL.Text := sqlstr;
        DM.QryUpdate.ExecSQL;
      end;

      DM.QryUpdate.Close;
      sqlstr := getlog_sql(4);
      SetParamter(sqlstr,'$FEE_NO$',Qt(fee_no));
      SetParamter(sqlstr,'$STATUS$',Qt(status));
      SetParamter(sqlstr,'$ILL_NO$',ILL_NO);
      SetParamter(sqlstr,'$LEVE_SEQ$',LEVE_SEQ);
      SetParamter(sqlstr,'$LEVE_NO$',LEVE_NO);
      SetParamter(sqlstr,'$ILL_NAME$',qt(ill_name));
      SetParamter(sqlstr,'$UPD_DATE$',Qt(ROCDate(Now,'')));
      SetParamter(sqlstr,'$UPD_TIME$',Qt(ROCTimes(now,'')));
      if status = '9' then
      begin
        IF S_D <> '' THEN
          SetParamter(sqlstr,'$S_DATE$','to_date('+Qt(S_D)+',''YYYY/MM/DD HH24:MI:SS'')')
        else
          SetParamter(sqlstr,'$S_DATE$','sysdate');
        if name_date = 'S' then
          SetParamter(sqlstr,'$S_DATE$','sysdate');
      end
      else
        SetParamter(sqlstr,'$S_DATE$','sysdate');
      //SetParamter(sqlstr,'$N_DATE$','');
      SetParamter(sqlstr,'$kind$',qt(kind));
      if LEVE_NO = '1' then
      begin
        SetParamter(sqlstr,'$LIMIT_TATOL$',qt(LIMIT_TIME));
        SetParamter(sqlstr,'$NOTE$',Qt(ill_name));
      end
      else
      begin
        SetParamter(sqlstr,'$LIMIT_TATOL$',qt('0'));
        SetParamter(sqlstr,'$NOTE$',Qt(top_name));
      end;
      SetParamter(sqlstr,'$LIMIT_TIME$',qt(LIMIT_TIME));
      SetParamter(sqlstr,'$SEQ_NO$',IntToStr(StrToInt(SNO)+1));
      SetParamter(sqlstr,'$CNCL_FLAG$',qt('N'));
      SetParamter(sqlstr,'$S_SUBDATE$','sysdate');
      DM.QryUpdate.SQL.Text := sqlstr;
      //DM.QryUpdate.SQL.SaveToFile('L:\status.txt');
      DM.QryUpdate.ExecSQL;

      DM.ADOLink.CommitTrans;
    except  on E: Exception do
      begin
        sql_time_log('ExecSQL:',E.Message+sqlstr);
        DM.ADOLink.RollbackTrans;
      end;
    end;
  end
end;

function getmajtime(fee_no: string; var rs,rn:TStringList):TStringList;
var
  sqlstr,t_name,stemp : string;
  h,m,totaltime,Aftertime,l_time :integer;
begin
  Result := TStringList.Create;
  //rs := TStringList.Create;
  //rn := TStringList.Create;
  totaltime := 0;
  Aftertime := 0;
  l_time := 0;
  h := 0;
  m := 0;
  try
    sqlstr := getlog_sql(0);
    SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
    //SetParamter(sqlstr,'$UPDDATE$',Qt(Minus_six_months_date));
    DM.qryTimer.Close;
    DM.qryTimer.SQL.Text := sqlstr;
    sql_Waiting_log('OPEN',sqlstr);
    DM.qryTimer.Open;
    sql_Waiting_log('CLOSE','');
    while not DM.qryTimer.Eof do
    begin
      totaltime := DM.qryTimer.fieldbyname('LIMIT_TATOL').AsInteger;
      t_name := trim(DM.qryTimer.fieldbyname('ILL_NAME').AsString);//DM.qryTimer.fieldbyname('NOTE').AsString;
      l_time := DM.qryTimer.fieldbyname('LIMIT_TIME').AsInteger;
      Aftertime := totaltime-MinutesBetween(now,DM.qryTimer.fieldbyname('s_date').AsDateTime);
      sqlstr := '';
      if DM.qryTimer.fieldbyname('s_date').AsString <> '' then
      begin
        h := (MinutesBetween(now,DM.qryTimer.fieldbyname('s_date').AsDateTime)) div 60 ;
        m := (MinutesBetween(now,DM.qryTimer.fieldbyname('s_date').AsDateTime)) mod 60;
        rs.Add(IntToStr(h)+'小時又'+AddChar(IntToStr(m),'0',2)+'分');
      end;
      if Aftertime > (totaltime-l_time) then
        stemp := '_N'
      else if Aftertime >= 0 then
        stemp := '_C'
      else
        stemp := '_Y';
      rn.Add(trim(DM.qryTimer.fieldbyname('ILL_NAME').AsString)+sTemp);
      Result.Add(t_name);
      DM.qryTimer.Next;
    end;
  finally
    //FreeAndNil(rs);
    //FreeAndNil(rn);
  end;
end;

{
function getmajtime(fee_no: string; var rs,rn:string):string;
var
  sqlstr,t_name,stemp : string;
  h,m,totaltime,Aftertime,l_time :integer;
begin
  Result := '';
  totaltime := 0;
  Aftertime := 0;
  l_time := 0;
  h := 0;
  m := 0;
  rs := '';
  rn := '';
  sqlstr := getlog_sql(0);
  SetParamter(sqlstr,'$fee_no$',Qt(fee_no));
  DM.qryTimer.Close;
  DM.qryTimer.SQL.Text := sqlstr;
  sql_Waiting_log('OPEN',sqlstr);
  DM.qryTimer.Open;
  sql_Waiting_log('CLOSE','');
  if not DM.qryTimer.IsEmpty then
  begin
    totaltime := DM.qryTimer.fieldbyname('LIMIT_TATOL').AsInteger;
    t_name := trim(DM.qryTimer.fieldbyname('ILL_NAME').AsString);//DM.qryTimer.fieldbyname('NOTE').AsString;
    l_time := DM.qryTimer.fieldbyname('LIMIT_TIME').AsInteger;
    Aftertime := totaltime-MinutesBetween(now,DM.qryTimer.fieldbyname('s_date').AsDateTime);
    sqlstr := '';
    if DM.qryTimer.fieldbyname('s_date').AsString <> '' then
    begin
      h := (MinutesBetween(now,DM.qryTimer.fieldbyname('s_date').AsDateTime)) div 60 ;
      m := (MinutesBetween(now,DM.qryTimer.fieldbyname('s_date').AsDateTime)) mod 60;
      rs := IntToStr(h)+'小時又'+AddChar(IntToStr(m),'0',2)+'分';
    end;
    if Aftertime > (totaltime-l_time) then
      stemp := '_N'
    else if Aftertime >= 0 then
      stemp := '_C'
    else
      stemp := '_Y';
    rn := trim(DM.qryTimer.fieldbyname('ILL_NAME').AsString)+sTemp;
    Result := t_name;
  end;
end;
}
Function getspace(str:string):integer;
var
  i, chrcnt:integer;
begin
  chrcnt := 0;
  For i := 1 to Length(str) do
  begin
    if (Str[i]=' ')then
      inc(chrcnt)
    else
      Break;
  end;
  Result := chrcnt;
end;


procedure strReplace(ridt: TRichEdit);
var
  rts: string;
  i: integer;
begin
  rts := '';
  rts:= ridt.Lines.Text;
  rts := replace(rts);
  rts := StringReplace(rts,'"','"',[rfReplaceAll]);
  rts := StringReplace(rts,'‵','''',[rfReplaceAll]);
  rts := StringReplace(rts,'′','''',[rfReplaceAll]);
  rts := StringReplace(rts,'&','＆',[rfReplaceAll]);
  rts := StringReplace(rts,':','：',[rfReplaceAll]);
  ridt.Lines.Clear;
  ridt.Lines.Add('');
  ridt.Lines.Strings[0] := rts;
end;

Function replace(str:string):String;
var
  i:integer;
begin
  For i:=1 to Length(str) do
  begin
    if (Str[i]=#13) or (Str[i]=#10) then
      Delete(Str,i,1);
  end;
  Result := Str;
end;

procedure strReplacememo(memodt: TMemo);
begin
  memodt.Lines.Text := StringReplace(memodt.Lines.Text,'"','"',[rfReplaceAll]);
  memodt.Lines.Text := StringReplace(memodt.Lines.Text,'‵','''',[rfReplaceAll]);
  memodt.Lines.Text := StringReplace(memodt.Lines.Text,'′','''',[rfReplaceAll]);
  memodt.Lines.Text := StringReplace(memodt.Lines.Text,'&','＆',[rfReplaceAll]);
  memodt.Lines.Text := StringReplace(memodt.Lines.Text,':','：',[rfReplaceAll]);
end;

function RIDTReplace(ridt: TRichEdit):string;
begin
  ridt.Lines.Text := StringReplace(ridt.Lines.Text,'"','”',[rfReplaceAll]);
  ridt.Lines.Text := StringReplace(ridt.Lines.Text,'‵','''',[rfReplaceAll]);
  ridt.Lines.Text := StringReplace(ridt.Lines.Text,'′','''',[rfReplaceAll]);
  ridt.Lines.Text := StringReplace(ridt.Lines.Text,'&','＆',[rfReplaceAll]);
  ridt.Lines.Text := StringReplace(ridt.Lines.Text,':','：',[rfReplaceAll]);
  Result := ridt.Lines.Text;
end;


function textstrReplace(ridt: string):string;
begin
  ridt := StringReplace(ridt,'"','”',[rfReplaceAll]);
  ridt := StringReplace(ridt,'‵','''',[rfReplaceAll]);
  ridt := StringReplace(ridt,'′','''',[rfReplaceAll]);
  ridt := StringReplace(ridt,'&','＆',[rfReplaceAll]);
  ridt := StringReplace(ridt,':','：',[rfReplaceAll]);
  Result := ridt;
end;

function soapstrReplace(ridt: string):string;
begin
  ridt := StringReplace(ridt,'Subject【','',[rfReplaceAll]);
  ridt := StringReplace(ridt,'Object【','',[rfReplaceAll]);
  ridt := StringReplace(ridt,'Assessment【','',[rfReplaceAll]);
  ridt := StringReplace(ridt,'Plan【','',[rfReplaceAll]);
  ridt := StringReplace(ridt,'【','',[rfReplaceAll]);
  Result := ridt;
end;

function dateformat(item:integer;dt:TDateTime):string;
begin
 case item of
   0: Result := FormatDateTime('EEEE/mm/dd',dt);
   1: Result := FormatDateTime('EEEE年mm月dd日',dt);
   2: Result := FormatDateTime('EEEE年mm月dd日 hh時nn分ss秒',dt);
   3: Result := FormatDateTime('EEEE年mm月dd日 hh時nn分',dt);
   4: result := FormatDateTime('YYYYMMDD',dt);
   5: result := FormatDateTime('YYYY\MM\DD',dt);
 end;
end;
function getmonthofday(val : integer; dt : Tdatetime):TdateTime;
var
  yy,mm,dd : Word;
  newmm : integer;
begin
  decodedate(dt,yy,mm,dd);
  newmm := mm+val;
  if newmm <= 0 then
  begin
    yy:=yy+((newmm div 12 )-1);
    mm :=  12-abs(newmm mod 12);
  end
  else
  begin
    if (newmm mod 12)= 0 then
    begin
      mm := 12;
      yy := yy+((newmm div 12)-1);
    end
    else
    begin
      mm := (newmm mod 12);
      yy := yy+((newmm div 12));
    end;
  end;
  dd := Min(DaysInAMonth(yy,mm),dd);
  Result := EncodeDate(yy,mm,dd);
end;

function NURFulltoHalf(str:string):string;
begin
  Result := StringReplace(str,'　',' ',[rfReplaceAll]);
end;

function FulltoHalf(str:string):string;
begin
  str := StringReplace(str,#13#10,'',[rfReplaceAll]);
  Result := StringReplace(str,'　',' ',[rfReplaceAll]);
end;

procedure use_opd_log(str:string);
var
  tmpSql:string;
  mySQLs: TStrings;
begin
  mySQLs:=TStringList.Create;
  tmpSql:=getlog_sql(5);
  SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
  SetParamter(tmpSql,'$SOURCE_TYPE$',Qt('C'));
  SetParamter(tmpSql,'$COMPUTER_NAME$',Qt(mypc));
  SetParamter(tmpSql,'$COMPUTER_IP$',Qt(MyIP));
  SetParamter(tmpSql,'$UPD_OPER$',Qt(getUserId));
  SetParamter(tmpSql,'$UPD_DATE$',Qt(ROCDate(now,'')));
  SetParamter(tmpSql,'$UPD_TIME$',Qt(ROCTimeS(now,'')));
  SetParamter(tmpSql,'$VERSION$',Qt(EPD_Ver));
  SetParamter(tmpSql,'$COLUMN1$',Qt(str));
  try
    mySQLs.Text:=tmpSql;
    DM.ExecSQL(mySQLs);
  except
    mySQLs.Free;
  end;
  mySQLs.Free;
end;

function gettimes_seqno(fee_no:string):string;
var
  sqlstr : string;
begin
  sqlstr := getlog_sql(11);
  //SetParamter(sqlstr,'$FEE_NO$',Qt(fee_no));
  DM.QryUpdate.Close;
  DM.QryUpdate.SQL.Text := sqlstr;
  DM.QryUpdate.Open;
  if DM.QryUpdate.FieldByName('seq_no').AsInteger > 0 then
    Result := IntToStr(DM.QryUpdate.FieldByName('seq_no').AsInteger+1)
  else
    Result := '1';
  DM.QryUpdate.Close;
end;

procedure times_log(event,vsdoc,orderdoc,NTE:string);
var
  TIME_TYPE,UN_FLAG,extdesc,seq : string;
  sqlstr: String;
  tmpqry : TADOQuery;
  SpName, ExeSPResult : STRING;
  Paramter,PType,RType,PData : TStrings;
begin
  extdesc := NTE;
  sqlstr := getlog_sql(6);
  SetParamter(sqlstr,'$TYPE_NAME$',Qt(event));
  tmpqry := TADOQuery.Create(nil);
  tmpqry.Connection := DM.ADOLink;
  tmpqry.Close;
  tmpqry.SQL.Clear;
  tmpqry.SQL.Text := sqlstr;
  tmpqry.Open;
  if not tmpqry.IsEmpty then //有紀錄資料FLAG
  begin
    TIME_TYPE := trim(tmpqry.fieldbyname('TIME_TYPE').AsString);
    UN_FLAG   := tmpqry.FieldByName('UNIQUE_FLAG').AsString;

    if TIME_TYPE = '11' then
    begin
      tmpqry.Close;
      tmpqry.SQL.Text := 'select log_date, log_time from epd_timelog where fee_no ='+qt(GetFeeNo)+' and time_type = '+qt(TIME_TYPE)+' and cncl_flag = ''N'' ';
      tmpqry.Open;
      if not tmpqry.IsEmpty then
        extdesc := '急診醫令系統更新完診時間';
    end;
    try
      Paramter:=TStringList.Create; //資料轉檔
      PType:=TStringList.Create;
      RType:=TStringList.Create;
      PData:=TStringList.Create;
      SpName:=getSpSql(1,Paramter,PType,RType);
      PData.Add(GetFeeNo);  //av_fee_no
      PData.Add(TIME_TYPE); //av_time_type
      PData.Add(extdesc);   //av_source_memo
      PData.Add(orderdoc); //av_log_oper
      PData.Add('');        //av_log_date
      PData.Add('');        //av_log_time
      PData.Add(vsdoc);     //主治醫師(av_vsdoc)
      ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
    finally
      Paramter.Free;
      PType.Free;
      RType.Free;
      PData.Free;
      tmpqry.Free;
    end;
  end;
end;

function Auto_chg_row(no:integer;lstr: string): TStringList;
var
  bstr,flag :string;
  i,sp :integer;
begin
  Result := TStringList.Create;
  bstr := '';
  flag := '';
  sp := 0;
  i  := 0;
  bstr:= Trim(lstr);
  repeat
    while i <= no do
    begin
      if ByteType(bstr[i], 1) <> mbSingleByte then
      begin
        flag := 'd';
        i := i + 2;
        Continue;
      end
      else
        flag := 's';
      if bstr[i] = ' ' then
      begin
        sp := i;
      end;
      inc(i);
    end;
    if (flag='s') and (sp > (no/2)) then
      i := sp;
    Result.Add(copy(bstr,0,i-1));
    bstr:=copy(bstr,i,length(bstr));
    sp := 0;
    i := 0;
    flag := '';
  until trim(bstr) = '';
end;


function SliptStr(no:integer;str: String): TStringList;
var
  i : Integer;
begin
  Result := TstringList.Create;
  while Str <> '' do
  begin
    Str := Trim(str);
    i := EngStrEnd(no,Str);
    Result.Add(copy(str,1,i));
    Str := Copy(str,i+1,Length(Str));
  end;
end;

function EngStrEnd(no:integer;str: String): Integer;
var
  i ,j,k: Integer;
begin
  i := 1;
  k := 0;
  J := 0;
  Result := 0;
  if Length(str) < no then
  begin
    Result := Length(str);
    Exit;
  end;
  while i <= Length(str) do //找斷行
  begin
    if IsDBCSLeadByte(Byte(str[i])) then
    begin
      k := i-1;
      i := i +2;
      if k > no then
        j := k
      else
        j := i;      
    end
    else
    begin
      if not (str[i] in ['a'..'z','A'..'Z']) then
      begin
        if k > no then
          j := k
        else
          j := i;
      end;
      k := i;
      inc(i) ;
    end ;
    if k > no then
    begin
    IF J = 0 THEN
      J := no;
      Result := j;
      break;
    end;
  end;
  if k > 0 then
    Result := j;
end;




Function Quickpkg(grpcode :string):Boolean;
var
  tmpqry : TADOQuery;
begin
   //藥品:              0,1,2,3.代碼,4.名稱,5.數量,6.單位,7.頻率,8.天數,9.途徑,10.計價單位,11.總量,12.自費別,
   //                         13.備註,14.包裝量,15.磨粉,16.Ordertype,17.M_EDate,18.M_ETime,19.M_Bdate,20.M_BTime
   //檢驗、查、放射:    0,1,2,3.代碼,4.名稱,5.數量,6.單位,7.頻率,8.(放射:部位(send_cd_1),檢驗:檢體(send_cd_2),檢查:send_cd_1),9.自費別,10.急作,
   //                         11.備註,12.'',13.(檢驗:send_cd_1,放射、檢查:send_cd_2),14.(放射:類型(x,x1,x2),檢驗:L,檢查:'C'),15.(序號),16.(檢驗、檢查:send_cd_3)
   //衛材、處置、order: 0,1,2,3.代碼,4.名稱,5.部位,6.數量,7.自費別
  Result := True;
  pkg_Sub := '';
  pkg_Obj := '';
  pkg_Plan := '';
  try
    sgM_pkg := TStringGrid.Create(nil);
    sgclx_pkg := TStringGrid.Create(nil);
    sgFmto_pkg := TStringGrid.Create(nil);
    sgi_pkg := TStringGrid.Create(nil);
    sgM_pkg.RowCount := 1;
    sgM_pkg.ColCount := 20;
    sgclx_pkg.RowCount := 1;
    sgclx_pkg.ColCount := 16;
    sgFmto_pkg.RowCount := 1;
    sgFmto_pkg.ColCount := 7;
    sgi_pkg.RowCount := 10;
    sgi_pkg.ColCount := 4;

    tmpqry := TADOQuery.Create(nil);
    tmpqry.Connection := DM.ADOLink;
    tmpqry.Close;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select * from order_grp_dtl where group_code='+qt(UpperCase(grpcode))+'order by order_type' );
    tmpqry.Open;
    while not tmpqry.Eof do
    begin
      if Trim(tmpqry.FieldByName('order_type').AsString)='I' then//I=ICD9;
        if InsertIcd2(sgi_pkg,Trim(tmpqry.FieldByName('fee_code').AsString)) then
        begin
           sgi_pkg.RowCount := sgi_pkg.RowCount + 1;
           sgi_pkg.Row := sgi_pkg.Row+1;
        end;
      if Trim(tmpqry.FieldByName('order_type').AsString)='F' then//F=FEE處置;
        if InsertFee2(sgFmto_pkg,Trim(tmpqry.FieldByName('fee_code').AsString),'',Trim(tmpqry.FieldByName('send_cd_1').AsString),
                  Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString)) then
          sgFmto_pkg.Row := sgFmto_pkg.Row+1;

      if Trim(tmpqry.FieldByName('order_type').AsString)='T' then// T=衛材
        if InsertMrtl2(sgFmto_pkg,Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString)) then
          sgFmto_pkg.Row := sgFmto_pkg.Row+1;

      if Trim(tmpqry.FieldByName('order_type').AsString)='M' then
        if InsertMed2(sgM_pkg,Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('cir_code').AsString),
                      Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('ORDER_DESC').AsString)) then
          sgM_pkg.Row := sgM_pkg.Row+1;

      if Trim(tmpqry.FieldByName('order_type').AsString)='L' then//L=檢驗;
        if InsertLab2(sgclx_pkg,Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString),
                      Trim(tmpqry.FieldByName('send_cd_1').AsString),Trim(tmpqry.FieldByName('send_cd_2').AsString),Trim(tmpqry.FieldByName('send_cd_3').AsString)) then
          sgclx_pkg.Row := sgclx_pkg.Row+1;

      if Trim(tmpqry.FieldByName('order_type').AsString)='X' then//X=XRAY;
        if InsertXRay2(sgclx_pkg,Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('TEXT_KIND').AsString),Trim(tmpqry.FieldByName('self_pay_flag').AsString),
                       Trim(tmpqry.FieldByName('unit_qty').AsString),Trim(tmpqry.FieldByName('send_cd_1').AsString),Trim(tmpqry.FieldByName('send_cd_2').AsString),
                       Trim(tmpqry.FieldByName('ORDER_DESC').AsString)) then
          sgclx_pkg.Row := sgclx_pkg.Row+1;

      if Trim(tmpqry.FieldByName('order_type').AsString)='C' then//C=檢查;
        if InsertChk2(sgclx_pkg,Trim(tmpqry.FieldByName('fee_code').AsString),Trim(tmpqry.FieldByName('send_cd_1').AsString),Trim(tmpqry.FieldByName('unit_qty').AsString),
                      Trim(tmpqry.FieldByName('self_pay_flag').AsString),Trim(tmpqry.FieldByName('ORDER_DESC').AsString)) then
          sgclx_pkg.Row := sgclx_pkg.Row+1;

      tmpqry.Next;
    end;
    tmpqry.Close;
    tmpqry.SQL.Clear;
    tmpqry.SQL.Add('select * from order_grp_text where group_code='+qt(UpperCase(grpcode))+' order by order_type,seq_no');
    tmpqry.Open;
    while not tmpqry.Eof do
    begin
      if Trim(tmpqry.FieldByName('order_type').AsString)='S' then
      Begin
        pkg_Sub :=Trim(tmpqry.FieldByName('order_text').AsString);
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='O' then
      Begin
        pkg_Obj := Trim(tmpqry.FieldByName('order_text').AsString);
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='P' then
      Begin
        pkg_Plan := Trim(tmpqry.FieldByName('order_text').AsString);
      End;
      if Trim(tmpqry.FieldByName('order_type').AsString)='R' then
      Begin
        if Trim(tmpqry.FieldByName('order_text').AsString) <> '' then
          insertordertxt2(sgFmto_pkg,'',Trim(tmpqry.FieldByName('order_text').AsString));
      End;
      tmpqry.Next;
    End;
    FreeAndNil(tmpqry);
  except
    FreeAndNil(tmpqry);
    FreeAndNil(sgM_pkg);
    FreeAndNil(sgclx_pkg);
    FreeAndNil(sgFmto_pkg);
    FreeAndNil(sgi_pkg);
    FreeAndNil(pkg_Sub);
    FreeAndNil(pkg_Obj);
    FreeAndNil(pkg_Plan);
  end;
end;

                                                          //包裝量   //天數            //次量
function CalTotal(med_code,self_ins_pay,Cir_code: string; pack_amt, med_days: Integer; per_qty: Extended): string;
var
  self1,self2: integer;
  q_str,flostr,accuflag: string;
//  rTmp: Real;
begin
  accuflag := '';
  with DM.QrySearch3 do
  begin
    DM.QrySearch3.Close;
    q_str := 'select med_dec,self_med_dec,Accu_flag from orderitem_basic where fee_code='+qt(med_code)+' and order_type=''M''';
    SQL.Text := q_str;
    Open;
    if not IsEmpty then
    begin
      if trim(FieldByName('med_dec').Asstring) ='' then
        self1 := 0
      else
        self1 := FieldByName('med_dec').AsInteger;
      if trim(FieldByName('self_med_dec').Asstring) ='' then
        self2 :=0
      else
        self2 := FieldByName('self_med_dec').AsInteger;
      accuflag := UpperCase(Setsys.ReadString('SYSTEM','MEDCOUNT',''));
      IF (trim(FieldByName('Accu_flag').Asstring) = 'N') and (Cir_code <> 'STAT') THEN //20140114是否累計藥量
        if accuflag = 'TRUE' THEN
           per_qty := ceil(per_qty);
    end;
    DM.QrySearch3.Close;
    q_str := getPreOrderSql(14);
    SetParamter(q_str,'$cir_code$',qt(trim(cir_code)));
    SQL.Text := q_str;
    Open;
    if not IsEmpty then
    begin
      if pack_amt = 0 then //沒有包裝量不計算
        Result := '1'
      else IF pack_amt = 1 THEN
      begin
        if (self1 <> 0) or (self2 <> 0) then//判斷是否要計算到小數
        begin
          if self_ins_pay ='Y' then
          begin
            flostr := '%5.'+FloatToStr(self1)+'f';
            Result := Format(flostr, [(per_qty*Round((med_days/FieldByName('TTL_DAYS').AsInteger ) * (FieldByName('TTL_DAYS').AsInteger / FieldByName('DUR_DAYS').AsInteger)) * FieldByName('Day_Cnt').AsInteger)/pack_amt]);
          end
          else
          begin
            flostr := '%5.'+FloatToStr(self2)+'f';
            Result := Format(flostr, [(per_qty*Round((med_days/FieldByName('TTL_DAYS').AsInteger ) * (FieldByName('TTL_DAYS').AsInteger / FieldByName('DUR_DAYS').AsInteger)) * FieldByName('Day_Cnt').AsInteger)/pack_amt]);
          end;
        end
        else
          Result := FloatToStr(ceil((per_qty*Round((med_days/FieldByName('TTL_DAYS').AsInteger ) * (FieldByName('TTL_DAYS').AsInteger / FieldByName('DUR_DAYS').AsInteger)) * FieldByName('Day_Cnt').AsInteger)/pack_amt));
      end
      ELSE
      begin
        if (self1 <> 0) or (self2 <> 0) then //判斷是否要計算到小數
        begin
          if self_ins_pay ='Y' then
          begin
            flostr := '%5.'+FloatToStr(self1)+'f';
            Result := Format(flostr, [(per_qty*Round((med_days/FieldByName('TTL_DAYS').AsInteger ) * (FieldByName('TTL_DAYS').AsInteger / FieldByName('DUR_DAYS').AsInteger)) * FieldByName('Day_Cnt').AsInteger)/pack_amt]);
          end
          else
          begin
            flostr := '%5.'+FloatToStr(self2)+'f';  
            Result := Format(flostr, [(per_qty*Round((med_days/FieldByName('TTL_DAYS').AsInteger ) * (FieldByName('TTL_DAYS').AsInteger / FieldByName('DUR_DAYS').AsInteger)) * FieldByName('Day_Cnt').AsInteger)/pack_amt]);
          end;                                                                                                                                                                                                 
        end
        else
          Result := IntToStr(ceil((per_qty*Round((med_days/FieldByName('TTL_DAYS').AsInteger ) * (FieldByName('TTL_DAYS').AsInteger / FieldByName('DUR_DAYS').AsInteger)) * FieldByName('Day_Cnt').AsInteger)/pack_amt));
      end;
    end;
    DM.QrySearch3.Close;
  end;
end;

function InsertMed2(sggtmp:TStringGrid;Med_code, aCir, aQty, DcDate, DcTime,
  aPath, aMemo: String): Boolean;
Var
//   StartDateStr: String;//用於非default的值
  sIns_Days,sMax_Days,TempStr,preOrderType,DefaultType: String;
  TempQ,TempQ2 :  TADOQuery;
 // ArrKey ,Mes : String;
  i : Integer;
  PreOrderCheck: String;
  myProgram,myParamter : String;
  ReplaceMed1,ReplaceMed2,ReplaceMed3 : String;
  //key : Word;
begin
   //藥品:              0,1,2,3.代碼,4.名稱,5.數量,6.單位,7.頻率,8.天數,9.途徑,10.計價單位,11.總量,12.自費別,
   //                         13.備註,14.包裝量,15.磨粉,16.Ordertype,17.M_EDate,18.M_ETime,19.M_Bdate,20.M_BTime
  if Trim(Med_code) ='' then
  begin
    Result := False;
    Exit;
  end;
  ReplaceMed1:='';ReplaceMed2:='';ReplaceMed3:='';
  DefaultType := 'M';
  // 重覆用藥
  if (Trim(aCir)<>'STAT') and (Trim(aCir)<>'ST') and (Trim(Med_code)<>'OM') then
  begin
    for i := sggtmp.FixedRows to sggtmp.RowCount -2 do
    begin
      if (Trim(sggtmp.Cells[7,i])='STAT') or (Trim(sggtmp.Cells[7,i])='ST') then
        continue
      else
      begin
        if Trim(sggtmp.Cells[3,i])= Trim(Med_code) then
        begin
          Case ShowMessage('已有此一藥物'+#13+'是否繼續?',['繼續','改為STAT','取消'],msComf) of
            2: begin
              Result := False;
              Exit;
            end;
            1: begin
              aCir := 'STAT';
              Break;
            end;
            0: begin
              Break;
            end;
          end;
        end;
      end;
    end
  end;
  TempQ :=  TADOQuery.Create(nil);
  TempQ.Connection := DM.ADOLink;
  TempQ2 :=  TADOQuery.Create(nil);
  TempQ2.Connection := DM.ADOLink;
  With TempQ do
  begin
    // 過敏藥物
    Close;
    SQL.Clear;
    SQL.Add('select * from OPD_WARNING2 where chr_no='+Qt(getChrno)+' and MED_CODE='+Qt(Trim(Med_CODE)));
    open;
    if not Eof then
    begin
      if Trim(FieldByName('STOP_FLAG').AsString) ='Y' then
      begin
        Showmessage('病人對此藥物有過敏記錄,且被設定為[不可使用],請改用其他藥物');
        Result := False;
        Close;
        FreeAndNil(TempQ);
        Exit;
      end
      else
      begin
        //if ShowMessage('病人對此藥物曾被登錄有過敏反應'+#13+'是否要繼續開立?',['開立','取消'],msComf) = 1 then
        if Messagedlg('病人對此藥物曾被登錄有過敏反應'+#13+'是否要繼續開立?',  mtConfirmation, [mbYes, mbNo],0) = mrYes then
        begin
          Result := False;
          Close;
          FreeAndNil(TempQ);
          Exit;
        end;
      end;
    end;
    Close;
    SQL.Clear;
    SQL.Add('Select * from orderItem_basic where fee_code='+Qt(Trim(Med_code)));
    open;
    if Eof then
    begin
      Result := False;
      Close;
      FreeAndNil(TempQ);
      Exit;
    end;
    if UpperCase(SetSys.ReadString('SYSTEM','肺結核檢核',''))='TRUE' then
    begin
      myProgram := SetSys.ReadString('OTHERSYSTEMLINK','肺結核檢核','');
      myParamter := SetSys.ReadString('PARAMTER','肺結核檢核','');
      PreOrderCheck := '';
      if myProgram <> '' then
      begin
        //肺結核用藥
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('SELECT F_HaveBTChart('+Qt(GetFeeNo)+','+Qt(Med_code)+') as aa from Dual');
        TempQ2.Open;
        if TempQ2.FieldByName('aa').AsString='Y' then
        begin
          comStrRep(myProgram);
          comstrRep(myParamter);
          SetParamter(myParamter,'$+MEDCODE+$',Med_code);
          WinExecAndWait32(myProgram+' '+myParamter,SW_SHOWNORMAL);
        end;
        TempQ2.Close;
      end;
    end;
    //急採&事審
   { myProgram:= SetSys.ReadString('OTHERSYSTEMLINK','事前審核','');
    PreOrderCheck := '';
    if myProgram<>'' then
    begin
      TempQ2.Close;
      TempQ2.SQL.Clear;
      TempQ2.SQL.Add('select F_IPD_MED_CHECK('+Qt(GetChrNo)+','+Qt(Med_code)+','+Qt(GetFeeNo)+','+Qt(RocDate(now,''))+','+Qt(Trim(FieldByName('INS_FLAG').AsString))+','+Qt(NullStrTo(aQty,Trim(FieldByName('UNIT_QTY').AsString)))+') as AA from dual;');
      TempQ2.open;
      PreOrderCheck:= StringReplace(TempQ2.fieldByName('AA').AsString,';','_',[rfReplaceAll]);
      if ReturnID(PreOrderCheck) ='Y' then
      begin
        ShowMessage(ReturnName(PreOrderCheck));
      end
      else if ReturnID(PreOrderCheck) ='N' then
      begin
        if ShowMessage(ReturnName(PreOrderCheck),['填申請單','開錯','離開'],mscomf) = 0 then
        begin
          //跑申請單
          myProgram :=Setsys.ReadString('OTHERSYSTEMLINK','事前審核','');
          myParamter := Setsys.ReadString('PARAMTER','事前審核','');
          comStrRep(myProgram);
          comstrRep(myParamter);
          SetParamter(myParamter,'$+MEDCODE+$',Med_code);
          WinExecAndWait32(myProgram+' '+myParamter,SW_SHOWNORMAL);
        end;
        TempQ2.Close;
        Result := False;
        FreeAndNil(TempQ2);
        Close;
        Exit;
      end
      else if ReturnID(PreOrderCheck) ='1' then
      begin
        ShowMessage(ReturnName(PreOrderCheck));
        TempQ2.Close;
        Result := False;
        FreeAndNil(TempQ2);
        Close;
        Exit;
      end
      else if ReturnID(PreOrderCheck) ='2' then
      begin
        ShowMessage(ReturnName(PreOrderCheck));
        TempQ2.Close;
        Result := False;
        FreeAndNil(TempQ2);
        Close;
        Exit;
      end;
    end ;   }
    {if not varisnull(FieldByName('ANESTAETICE_TYPE').AsVariant) then
    begin
      if (FieldByName('ANESTAETICE_TYPE').AsString ='1' ) or
          (FieldByName('ANESTAETICE_TYPE').AsString ='2' ) or
          (FieldByName('ANESTAETICE_TYPE').AsString ='3' ) then
      begin
        Result := False;
        Close;
        FreeAndNil(TempQ);
        ShowMessage('一至三級管制藥品，請於文字部分輸入，並請填寫管制藥專用處方箋');
        Exit;
      end;
    //end }


    if Trim(FieldByName('use_status_o').AsString) <>'1' then //停用缺藥
    begin
      TempStr := '';
      if FieldByName('use_status_o').AsString ='2' then
        TempStr :=' 暫時缺藥' + #13#10 + '請改開其他藥品'
      else
        TempStr :=' 已取消' + #13#10 + '請改開其他藥品';
      if (Trim(FieldByName('REPLACE_CODE1').AsString)<>'' ) or (Trim(FieldByName('REPLACE_CODE2').AsString)<>'' ) or (Trim(FieldByName('REPLACE_CODE3').AsString)<>'' ) then
      begin
        if Trim(FieldByName('REPLACE_CODE1').AsString) <>'' then
        begin
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('Select Fee_Name from OrderItem_Basic where Fee_code='+Qt(FieldByName('REPLACE_CODE1').AsString));
        TempQ2.Open;
        ReplaceMed1 := TempQ2.fieldbyName('Fee_name').AsString;
        end;
        if Trim(FieldByName('REPLACE_CODE2').AsString) <>'' then
        begin
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('Select Fee_Name from OrderItem_Basic where Fee_code='+Qt(FieldByName('REPLACE_CODE2').AsString));
        TempQ2.Open;
        ReplaceMed2 := TempQ2.fieldbyName('Fee_name').AsString;
        end;

        if Trim(FieldByName('REPLACE_CODE3').AsString) <>'' then
        begin
        TempQ2.Close;
        TempQ2.SQL.Clear;
        TempQ2.SQL.Add('Select Fee_Name from OrderItem_Basic where Fee_code='+Qt(FieldByName('REPLACE_CODE3').AsString));
        TempQ2.Open;
        ReplaceMed3 := TempQ2.fieldbyName('Fee_name').AsString;
        end;
        TempQ2.Close;


        Case ShowMessage2(FieldByName('Fee_Name').AsString+#13+TempStr,[Trim(ReplaceMed1),NullStrTo(Trim(ReplaceMed2),'取消'),nullstrTo(Trim(ReplaceMed3),'取消'),'取消'],MsInfor) of
          0 : result:=InsertMed2(sggtmp,Trim(FieldByName('REPLACE_CODE1').AsString),'','','','','');
          1 : result:=InsertMed2(sggtmp,Trim(FieldByName('REPLACE_CODE2').AsString),'','','','','');
          2 : result:=InsertMed2(sggtmp,Trim(FieldByName('REPLACE_CODE3').AsString),'','','','','');
          3 :
          begin
            result := False;
            Close;
            FreeAndNil(TempQ);
            exit;
          end;
        end;
        Close;
        FreeAndNil(TempQ);
        Exit;
      end
      else
      begin
        ShowMessage(FieldByName('Fee_name').AsString+TempStr);
        Close;
        result := False;
        FreeAndNil(TempQ);
        exit;
      end;
    end
    else
    begin
      //判斷是否有重複開立
      //藥物檢核
      {if havepat then
      begin
        With DM.Med_Check do
        begin
          Close;
          Parameters.Clear;
          ProcedureName := 'check_medicines_limit';
          Parameters.CreateParameter('chrno',ftString,pdInput,4000,Null); // 傳入值
          Parameters.CreateParameter('medcode',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('doccode',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('icdno1',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('icdno2',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('icdno3',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('icdno4',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('icdno5',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('birthday',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('feecode',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('Self',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('sex',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('circode',ftString,pdInput,4000,Null);
          Parameters.CreateParameter('arrest',ftString,pdInputOutput,4000,Null); // 回傳值
          Parameters.CreateParameter('message',ftString,pdReturnValue,4000,Null); // 回傳值
          Parameters.CreateParameter('isqlcode',ftInteger,pdReturnValue,10,0);
          //ADOStoredProc1.Parameters.ParamByName('P_IP_ADDRESS').Value := Edit1.Text;

          Parameters.parambyname('chrno').Value := GetchrNo;
          Parameters.parambyname('medcode').Value := Trim(Med_code);
          Parameters.parambyname('doccode').Value := getUserId;
          Parameters.parambyname('icdno1').Value := SGIcd.Cells[1,1];
          Parameters.parambyname('icdno2').Value := SGIcd.Cells[1,2];
          Parameters.parambyname('icdno3').Value := SGIcd.Cells[1,3];
          Parameters.parambyname('icdno4').Value := SGIcd.Cells[1,4];
          Parameters.parambyname('icdno5').Value := SGIcd.Cells[1,5];
          Parameters.parambyname('birthday').Value := getBirth;
          Parameters.parambyname('feecode').Value := Trim(Med_code);
          Parameters.parambyname('self').Value := getPatID;
          Parameters.parambyname('sex').Value := getSex01;
          Parameters.parambyname('circode').Value := NullStrTo(aCir,Trim(TempQ.FieldByName('CIR_CODE').AsString));
          if ToolButton5.Enabled then
            Parameters.parambyname('arrest').Value := '0'
          else
            Parameters.parambyname('arrest').Value := '1';
          //parambyname('ARG_OPER').AsString :=  GetUserId;

          ExecProc;
          //refresh ;
          if varisnull(Parameters.parambyname('arrest').Value) then
            arrkey := 'N'
          else
            arrkey := Trim(Parameters.parambyname('arrest').Value) ;
          mes := '';
          if not varisnull(Parameters.parambyname('message').Value) then
            Mes :=Trim(Parameters.parambyname('message').Value);
          if Mes <> '' then
            ShowMessage(Mes,['確定'],mscomf);
          if arrkey='Y' then
          begin
            Close;
            Result := False;
            exit;
          end;
        end;
      end;}
      //健保天數,最大天數

      sMAX_Days:=NullStrTo(Trim(FieldByName('DAYS_LIMIT').AsString),'0');
      sIns_Days:=NullStrTo(Trim(FieldByName('MED_DAYS').AsString),'0');
      sggtmp.Cells[0,sggtmp.Row] := 'N';//新開立
      sggtmp.Cells[1,sggtmp.Row] := '';
      sggtmp.Cells[2,sggtmp.Row] := '';
      try
        if sggtmp.Row > 1 then
          preOrdertype := sggtmp.Cells[16,sggtmp.Row -1]
        else
          preOrdertype:= '';
      except
        preOrdertype:= '';
      end;
      sggtmp.Cells[16,sggtmp.Row] := NullStrTo(preOrdertype,DefaultType);
      sggtmp.Cells[19,sggtmp.Row] := ROCDATE(now,'');
      sggtmp.Cells[20,sggtmp.Row] := ROCTIME(now,'');

      if (Trim(aCir)<>'STAT') and (Trim(aCir)<>'ST') then
      begin
        if (sIns_Days ='0') and (sMax_Days ='0') then
        begin
          sggtmp.Cells[17,sggtmp.Row] := '';
          sggtmp.Cells[18,sggtmp.Row] := '';
        end
        else if (sIns_Days <>'0') then
        begin
          sggtmp.Cells[17,sggtmp.Row] := ROCDATE(now+StrToInt(sIns_Days),'');
          sggtmp.Cells[18,sggtmp.Row] := ROCTIME(now,'');
        end
        else
        begin
          if (sggtmp.Cells[16,sggtmp.Row] = 'D') or (sMax_Days ='99') then
          begin
            sggtmp.Cells[17,sggtmp.Row] := '';
            sggtmp.Cells[18,sggtmp.Row] := '';
          end
          else
          begin
            sggtmp.Cells[17,sggtmp.Row] := ROCDATE(now+StrToInt(sMax_Days),'');
            sggtmp.Cells[18,sggtmp.Row] := ROCTIME(now,'');
          end;
        end;
      end;
   //藥品:              0,1,2,3.代碼,4.名稱,5.數量,6.單位,7.頻率,8.天數,9.途徑,10.計價單位,11.總量,12.自費別,
   //                         13.備註,14.包裝量,15.磨粉,16.Ordertype,17.M_EDate,18.M_ETime,19.M_Bdate,20.M_BTime
      sggtmp.Cells[3,sggtmp.Row] := Trim(Med_code);
      sggtmp.Cells[4,sggtmp.Row] := Trim(FieldByName('Fee_name').AsString);
      sggtmp.Cells[5,sggtmp.Row] := NullStrTo(aQty,Trim(FieldByName('UNIT_QTY').AsString));
      sggtmp.Cells[6,sggtmp.Row] := Trim(FieldByName('unit_o').AsString);
      sggtmp.Cells[7,sggtmp.Row] := NullStrTo(aCir,Trim(FieldByName('cir_code_o').AsString));
      sggtmp.Cells[8,sggtmp.Row] := '1';
      sggtmp.Cells[9,sggtmp.Row] := NullStrTo(aPath,Trim(FieldByName('path_code_o').AsString));
      sggtmp.Cells[10,sggtmp.Row] :=  NullStrTo(aCir,Trim(FieldByName('fee_unit_o').AsString));
      sggtmp.Cells[14,sggtmp.Row] := Trim(FieldByName('fee_pack_o').AsString);
      sggtmp.Cells[11,sggtmp.Row] := CalTotal(Trim(Med_code),Trim(FieldByName('INS_FLAG').AsString),sggtmp.Cells[7,sggtmp.Row],StrToInt(NullStrTo(Trim(sggtmp.Cells[14,sggtmp.Row]),'0')),StrToInt(NullStrTo(Trim(sggtmp.Cells[8,sggtmp.Row]),'0')),StrToFloat(NullStrTo(Trim(sggtmp.Cells[5,sggtmp.Row]),'0')));
      sggtmp.Cells[12,sggtmp.Row] := Trim(FieldByName('INS_FLAG').AsString);
      sggtmp.Cells[13,sggtmp.Row] := aMemo;

      
      //sggtmp.Cells[M_Hint,sggtmp.Row] := fieldByName('Fee_Desc').AsString+#13+'抗生素等級 : '+fieldByName('ANTICONTROL_TYPE').AsString+#13+'懷孕用藥分級 :'+fieldByName('PREG_CATE').AsString+#13+'腎功能調劑 :'+fieldByName('CKD_DESC').AsString;

    end;
    //連帶
    Close;
  end;
  Result := True;

  sggtmp.RowCount:= sggtmp.RowCount+1;
  //key := vk_down;
  //sendMessage(sggtmp.Handle,wm_keydown,key,0);
  FreeAndNil(TempQ);
  FreeAndNil(TempQ2);
end;

//檢驗
Function InsertLab2(sggtmp:TStringGrid;feecode,qty,selfins,sendcd1,sendcd2,sendcd3:string):Boolean;
var
  Qrys :TADOQuery;
  tmpSql :String;
  //mySQLs :TStrings;
begin
  Qrys := TADOQuery.Create(nil);
  Qrys.Connection := Dm.ADOLink;
  tmpSql := getPreOrderSql(1);
  SetParamter(tmpSql,'$FEE_CODE$',Qt(feecode));
  SetParamter(tmpSql,'$ORDER_TYPE$',qt('L'));
  tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(sendcd1);
  tmpSql:=tmpSql+#13+' And Send_cd_2=' +Qt(sendcd2);
  Qrys.SQL.Text:=tmpSql;
  Qrys.Open;
  if not Qrys.IsEmpty then
  begin
    {if isRepeat(feecode,Trim(Qrys.FieldByName('Send_cd_1').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),Trim(Qrys.FieldByName('Send_cd_3').AsString),SGLab) then
    begin
      MessageDlg('此'+ReturnId(ReturnName(ReturnName(OutList.Strings[i])))+'檢驗品項已重複開立！',mtWarning,[mbOk],0);
      //exit;
    end;}
   //檢驗、查、放射:    0,1,2,3.代碼,4.名稱,5.數量,6.單位,7.頻率,8.(放射:部位(send_cd_1),檢驗:檢體(send_cd_2),檢查:send_cd_1),9.自費別,10.急作,
   //                         11.備註,12.'',13.(檢驗:send_cd_1,放射、檢查:send_cd_2),14.(放射:類型(x,x1,x2),檢驗:L,檢查:'C'),15.(序號),16.(檢驗、檢查:send_cd_3)
    sggtmp.Cells[0,sggtmp.Rowcount -1] := 'N';
    sggtmp.Cells[1,sggtmp.Rowcount -1] := 'L';
    sggtmp.Cells[2,sggtmp.Rowcount -1] := '';

    sggtmp.Cells[3,sggtmp.Rowcount -1] := feecode;
    sggtmp.Cells[4,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('fee_name').AsString);
    if qty <> '' then
      sggtmp.Cells[5,sggtmp.Rowcount -1] := qty
    else
      sggtmp.Cells[5,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('UNIT_QTY').AsString);
    sggtmp.Cells[6,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('UNIT_O').AsString);
    sggtmp.Cells[7,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('CIR_CODE_O').AsString);
    sggtmp.Cells[8,sggtmp.Rowcount -1] :=  Trim(Qrys.FieldByName('send_cd_2').AsString);
    if selfins <> '' then
      sggtmp.Cells[9,sggtmp.Rowcount -1] := selfins
    else
      sggtmp.Cells[9,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('INS_FLAG').AsString);
    sggtmp.Cells[10,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('URG_FLAG').AsString);
    sggtmp.Cells[11,sggtmp.Rowcount -1] := '';
    sggtmp.Cells[13,sggtmp.Rowcount -1] :=  Trim(Qrys.FieldByName('send_cd_1').AsString); //send_cd_1
    sggtmp.Cells[14,sggtmp.Rowcount -1] := 'L';  // 檢驗項目
    sggtmp.Cells[16,sggtmp.Rowcount -1] :=  sendcd3;//send_cd_3

    sggtmp.RowCount := sggtmp.RowCount +1 ;
    Result := True;
  end;
  Qrys.Free;
end;
//檢查
Function InsertChk2(sggtmp:TStringGrid;feecode,sendcd1,qty,sefins,memo:string):Boolean;
var
  Qrys :TADOQuery;
  tmpSql :String;
  //mySQLs :TStrings;
begin
  Result := False;
  Qrys := TAdoQuery.Create(nil);
  Qrys.Connection := Dm.ADOLink;
  try
    tmpSql := getPreOrderSql(1);
    SetParamter(tmpSql,'$FEE_CODE$',Qt(feecode));
    SetParamter(tmpSql,'$ORDER_TYPE$',Qt('E'));
    if sendcd1 <> '' then
      tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(trim(sendcd1))
    else
      tmpSql:=tmpSql+#13+'  And nvl(Send_cd_1,''nil'')=''nil'' ';
    Qrys.SQL.Text:=tmpSql;
    Qrys.Open;
    if not Qrys.IsEmpty then
    begin
      {if isRepeat(Trim(feecode),Trim(Qrys.FieldByName('Send_cd_1').AsString),Trim(Qrys.FieldByName('Send_cd_2').AsString),Trim(Qrys.FieldByName('Send_cd_3').AsString),SGChk) then
      begin
        MessageDlg('此'+ReturnId(ReturnName(OutList.Strings[i]))+'檢查品項已重複開立！',mtWarning,[mbOk],0);
        //exit;
      end;}
   //檢驗、查、放射:    0,1,2,3.代碼,4.名稱,5.數量,6.單位,7.頻率,8.(放射:部位(send_cd_1),檢驗:檢體(send_cd_2),檢查:send_cd_1),9.自費別,10.急作,
   //                         11.備註,12.'',13.(檢驗:send_cd_1,放射、檢查:send_cd_2),14.(放射:類型(x,x1,x2),檢驗:L,檢查:'C'),15.(序號),16.(檢驗、檢查:send_cd_3)
      sggtmp.Cells[0,sggtmp.Rowcount -1] := 'N';
      sggtmp.Cells[1,sggtmp.Rowcount -1] := 'C';
      sggtmp.Cells[2,sggtmp.Rowcount -1] := '';

      sggtmp.Cells[3,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('fee_CODE').AsString);
      sggtmp.Cells[4,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('fee_name').AsString);
      sggtmp.Cells[5,sggtmp.Rowcount -1] := qty;
      sggtmp.Cells[6,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('UNIT_O').AsString);
      sggtmp.Cells[7,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('CIR_CODE_O').AsString);
      sggtmp.Cells[8,sggtmp.Rowcount -1] := sendcd1;
      sggtmp.Cells[9,sggtmp.Rowcount -1] := sefins;
      sggtmp.Cells[10,sggtmp.Rowcount -1] := 'Y';//Trim(FieldByName('UNIT_QTY').AsString);
      sggtmp.Cells[11,sggtmp.Rowcount -1] := memo;
      sggtmp.Cells[13,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_2').AsString);
      sggtmp.Cells[14,sggtmp.Rowcount -1] := 'C';  // 檢查項目
      sggtmp.Cells[16,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('Send_cd_3').AsString);
      sggtmp.RowCount := sggtmp.RowCount +1 ;
      Result := True;
    end;
    Result := true;
  except

  end;
   Qrys.Free;
end;
//放射
Function InsertXRay2(sggtmp:TStringGrid;feecode,ordertpye,sefins,qty,sendcd1,sendcd2,memo:string):Boolean;
var
  Qrys :TADOQuery;
  tmpSql :String;
  //mySQLs :TStrings;
begin
  Result := False;
  try
    tmpSql := getPreOrderSql(1);
    SetParamter(tmpSql,'$FEE_CODE$',Qt(feecode));
    SetParamter(tmpSql,'$ORDER_TYPE$',qt(ordertpye));
    tmpSql:=tmpSql+#13+' And Send_cd_1=' +Qt(sendcd1);
    if trim(sendcd2) = '' then
      tmpSql:=tmpSql+#13+' And nvl(Send_CD_2,''nil'')=''nil'' '
    else
      tmpSql:=tmpSql+#13+' And Send_CD_2='+Qt(sendcd2);
    Qrys.SQL.Text:=tmpSql;
    Qrys.Open;
    if not Qrys.IsEmpty then
    begin
      //if isRepeat(Trim(feecode),sendcd1,sendcd2,'',SGXRay) then
      //begin
     //   MessageDlg('此'+Trim(Qrys.FieldByName('FEE_desc').AsString)+' 放射品項已重複開立！',mtWarning,[mbOk],0);
     // end;
   //檢驗、查、放射:    0,1,2,3.代碼,4.名稱,5.數量,6.單位,7.頻率,8.(放射:部位(send_cd_1),檢驗:檢體(send_cd_2),檢查:send_cd_1),9.自費別,10.急作,
   //                         11.備註,12.'',13.(檢驗:send_cd_1,放射、檢查:send_cd_2),14.(放射:類型(x,x1,x2),檢驗:L,檢查:'C'),15.(序號),16.(檢驗、檢查:send_cd_3)
      sggtmp.Cells[0,sggtmp.Rowcount -1] := 'N';
      sggtmp.Cells[1,sggtmp.Rowcount -1] := 'X';
      sggtmp.Cells[2,sggtmp.Rowcount -1] := '';

      sggtmp.Cells[3,sggtmp.Rowcount -1]  := trim(feecode);
      sggtmp.Cells[4,sggtmp.Rowcount -1] := Trim(Qrys.FieldByName('FEE_name').AsString);
      sggtmp.Cells[5,sggtmp.Rowcount -1]   := qty;
      sggtmp.Cells[6,sggtmp.Rowcount -1]  := Trim(Qrys.FieldByName('UNIT_O').AsString);
      sggtmp.Cells[7,sggtmp.Rowcount -1]   := Trim(Qrys.FieldByName('CIR_CODE_O').AsString);
      sggtmp.Cells[8,sggtmp.Rowcount -1]  := sendcd1;
      sggtmp.Cells[9,sggtmp.Rowcount -1]   := sefins;
      sggtmp.Cells[10,sggtmp.Rowcount -1]   := 'Y';
      sggtmp.Cells[11,sggtmp.Rowcount -1]  := memo;
      sggtmp.Cells[13,sggtmp.Rowcount -1]  := sendcd2;
      sggtmp.Cells[14,sggtmp.Rowcount -1]  := ordertpye;
      sggtmp.Cells[16,sggtmp.Rowcount -1]  := Trim(Qrys.FieldByName('send_cd_3').AsString);
      sggtmp.RowCount := sggtmp.RowCount +1 ;
      Result := True;
    end;

  except
  end;
  Qrys.Free;
end;
//處置
Function InsertFee2(sggtmp:TStringGrid;fee_code, source: string; Part_code: string = ''; aqty: string = ''; SELF_PAY_FLAG: string = ''):Boolean;
var
  q_str : string;
begin
  Result := False;
  if fee_code <> '' then
  begin
    with DM.QrySearch do
    begin
      q_str := getPreOrderSql(12);
      q_str := q_str + ' AND Fee_CODE = '+Qt(fee_code);
      SQL.Text := q_str;
      //sql.SaveToFile('D:\insertfee.txt');
      Open;
      Last;
      First;
      if RecordCount > 0 then
      begin
        {if RepeatInGrid(FieldByName('FEE_CODE').AsString,'0', F_code, SGFee) then
        begin
          ShowMessage(FieldByName('FEE_NAME').AsString + ' 重複開立');
          SGFee.Rows[SGFee.Row].Clear ;
          exit;
        end;}
        //衛材、處置、order: 0,1,2,3.代碼,4.名稱,5.部位,6.數量,7.自費別
        if Trim(FieldByName('FEE_CODE').AsString) <> '' then
        begin
          sggtmp.Cells[0, sggtmp.Row] :='N';
          sggtmp.Cells[1, sggtmp.Row] :='F';
          sggtmp.Cells[2, sggtmp.Row] :='';
          sggtmp.Cells[3, sggtmp.Row] := Trim(FieldByName('fee_code').AsString); //  費用代碼
          sggtmp.Cells[4, sggtmp.Row] := Trim(FieldByName('fee_name').AsString); //  費用名稱
          if Part_code <> '' then
            sggtmp.Cells[5, sggtmp.Row] := Part_code
          else
            sggtmp.Cells[5, sggtmp.Row] := ''; //  部位
          if aqty <> '' then
            sggtmp.Cells[6, sggtmp.Row] := aqty
          else
            sggtmp.Cells[6, sggtmp.Row] := Trim(FieldByName('UNIT_QTY').AsString); //  數量
          if SELF_PAY_FLAG <> '' then
            sggtmp.Cells[7, sggtmp.Row] := SELF_PAY_FLAG
          else
            sggtmp.Cells[7, sggtmp.Row] := Trim(FieldByName('ins_flag').AsString);

          sggtmp.RowCount := sggtmp.RowCount + 1;
          Result := True;
        end
      end;
    end;
  end;
end;
//ICD
Function InsertIcd2(sggtmp:TStringGrid;fee_code: string):Boolean;
var
  q_str,fcode : string;
begin
  Result := False;
  if fee_code <> '' then
  begin
    with DM.QrySearch do
    begin
      q_str := getPreOrderSql(11);
      q_str := q_str + ' AND ICD9_CODE = '+Qt(fee_code);
      SQL.Text := q_str;
      Open;
      Last;
      First;      
      if RecordCount > 0 then
      begin
        {if RepeatInGrid(FieldByName('ICD9_CODE').AsString,'0', 0, SGIcd) then
        begin
          ShowMessage(FieldByName('ICD9_CODE').AsString+ #13#10 +FieldByName('CHN_SIMP_DESC').AsString + #13#10 + '疾病代碼 重複');
          sggtmp.Rows[sggtmp.Row].Clear;
        end
        else}
        if Trim(FieldByName('ICD9_CODE').AsString) <> '' then
        begin
          sggtmp.Cells[0, sggtmp.Row] := FieldByName('ICD9_CODE').AsString;
          sggtmp.Cells[1, sggtmp.Row] := FieldByName('ENG_full_DESC').AsString;
          sggtmp.Cells[2, sggtmp.Row] := FieldByName('CHN_full_DESC').AsString;
          sggtmp.Cells[3, sggtmp.Row] := FieldByName('slow_flag').AsString;
          sggtmp.Cells[4, sggtmp.Row] := FieldByName('urg_flag').AsString;

        end;
        Result := True;
      end;
    end;
  end;
end;
//衛材
Function InsertMrtl2(sggtmp:TStringGrid;fee_code,qty,selfpay:string):Boolean;
var
  q_str : string;
begin
  Result := False;
  DM.QrySearch.Close;
  q_str := getPreOrderSql(13);
  q_str := q_str + ' AND Fee_CODE = '+Qt(fee_code);

  dm.QrySearch.SQL.Text := q_str;
  dm.QrySearch.Open;
  if not dm.qrysearch.IsEmpty then
  begin
    {if RepeatInGrid(dm.qrysearch.FieldByName('Fee_CODE').AsString,'0', 0, SGMtrl) then
    begin
      ShowMessage(dm.qrysearch.FieldByName('Fee_CODE').AsString+ #13#10 +dm.qrysearch.FieldByName('fee_name').AsString + #13#10 + '衛材用品 重複開立');
      SGMtrl.Rows[SGMtrl.Row].Clear;
    end
    else }
    if Trim(dm.qrysearch.FieldByName('FEE_CODE').AsString) <> '' then
    begin
      sggtmp.Cells[0, sggtmp.Row] := 'N';
      sggtmp.Cells[1, sggtmp.Row] := 'O';
      sggtmp.Cells[2, sggtmp.Row] := '';
      sggtmp.Cells[3, sggtmp.Row] := dm.qrysearch.FieldByName('fee_code').AsString; //  費用代碼
      sggtmp.Cells[4, sggtmp.Row] := dm.qrysearch.FieldByName('fee_name').AsString; //  費用名稱
      sggtmp.Cells[5, sggtmp.Row] := ''; //  類別
      if (qty = '') or (qty = '0') then
        sggtmp.Cells[6, sggtmp.Row] := '1' //  數量
      else
        sggtmp.Cells[6, sggtmp.Row] := qty;
      if selfpay = '' then
        sggtmp.Cells[7, sggtmp.Row] := dm.qrysearch.FieldByName('ins_flag').AsString
      else
        sggtmp.Cells[7, sggtmp.Row] := selfpay;
      sggtmp.RowCount := sggtmp.RowCount + 1;
      Result := True;
    end;
  end;
  dm.QrySearch.close;
end;
//文字醫囑
Function insertordertxt2(sggtmp:TStringGrid;seqno,otxt:string):Boolean;
begin
  Result := True;
  sggtmp.Cells[0, sggtmp.Row] := 'N';
  sggtmp.Cells[1, sggtmp.Row] := 'T';
  sggtmp.Cells[2, sggtmp.Row] := 'N';
  sggtmp.Cells[3, sggtmp.Row] := seqno;
  sggtmp.Cells[4, sggtmp.Row] := otxt;
  sggtmp.RowCount := sggtmp.RowCount + 1;
end;


function er_look(inout, feeno, DocCode, SYSTYPE:string):string;
var
  tmpqry : TADOQuery;
  q_str,HAVEDATA : STRING;
begin
  try
    tmpqry := TADOQuery.Create(nil);
    tmpqry.Connection := DM.ADOLink;
    tmpqry.Close;
    tmpqry.SQL.Clear;
    q_str := getlog_sql(18);
    SetParamter(q_str,'$FEE_NO$',Qt(feeno));
    SetParamter(q_str,'$SYS_TYPE$',Qt(SYSTYPE));
    tmpqry.SQL.Text := q_str;
    tmpqry.Open;
    IF tmpqry.IsEmpty THEN
      HAVEDATA := 'N'
    ELSE
      HAVEDATA := 'Y';

    IF inout = 'IN' THEN
    BEGIN
      IF HAVEDATA= 'Y' THEN
      begin
        if SYSTYPE ='EDNUS' then
          Result := HAVEDATA+'_已有護理人員登入此病人<登入只能瀏覽不能修改>:'+#13#10+'護理人員:'+GETDOCNAME(tmpqry.FIELDBYNAME('DOC_CODE').AsString)+#13#10+
                    '電腦名稱:'+tmpqry.FIELDBYNAME('COMPUTERNAME').AsString+#13#10+'電腦IP:'+tmpqry.FIELDBYNAME('IPADDRESS').AsString 
        else
          Result := HAVEDATA+'_已有醫師登入此病人<登入只能瀏覽不能修改>:'+#13#10+'登入醫師:'+GETDOCNAME(tmpqry.FIELDBYNAME('DOC_CODE').AsString)+#13#10+
                    '電腦名稱:'+tmpqry.FIELDBYNAME('COMPUTERNAME').AsString+#13#10+'電腦IP:'+tmpqry.FIELDBYNAME('IPADDRESS').AsString ;
      end
      else
      begin
        DM.ADOLink.BeginTrans;
        tmpqry.Close;
        tmpqry.SQL.Clear;
        q_str := getlog_sql(19);
        SetParamter(q_str,'$OPD_DATE$',Qt(GetEpdDate));
        SetParamter(q_str,'$DOC_CODE$',Qt(DocCode));
        SetParamter(q_str,'$CHR_NO$',Qt(GetChrNo));
        SetParamter(q_str,'$FEE_NO$',Qt(feeno));
        SetParamter(q_str,'$LOCK_FLAG$',Qt('Y'));
        SetParamter(q_str,'$UPD_DATE$',Qt(ROCDate(Now,'')));
        SetParamter(q_str,'$UPD_TIME$',Qt(ROCTime(Now,'')));
        SetParamter(q_str,'$IPADDRESS$',Qt(MyIP));
        SetParamter(q_str,'$COMPUTERNAME$',Qt(mypc));
        SetParamter(q_str,'$SYS_TYPE$',Qt(SYSTYPE));
        tmpqry.SQL.Text := q_str;
        tmpqry.ExecSQL;
        DM.ADOLink.CommitTrans;
      end;
    END;
    IF inout = 'OUT' THEN
    BEGIN
      IF HAVEDATA= 'Y' THEN
      BEGIN
        DM.ADOLink.BeginTrans;
        tmpqry.Close;
        tmpqry.SQL.Clear;
        q_str := getlog_sql(20);
        SetParamter(q_str,'$FEE_NO$',Qt(feeno));
        SetParamter(q_str,'$DOC_CODE$',Qt(DocCode));
        tmpqry.SQL.Text := q_str;
        tmpqry.ExecSQL;
        DM.ADOLink.CommitTrans;
      END;
    END;
   except
     DM.ADOLink.RollbackTrans;
     //ShowMessage('LOCK 作業失敗(ERSFUNC:1797 LINE)');
     FreeAndNil(tmpqry);
   end;
   FreeAndNil(tmpqry);
end;


function opd_ba1printflag(hav:string):string;
var
  tmpsql :string;
  tmpqry : TADOQuery;
begin
  tmpqry := TADOQuery.Create(nil);
  try
    tmpqry.Connection := DM.ADOLink;
    tmpqry.Close;
    if (hav='N') or (hav='Y') then
    begin
      DM.ADOLink.BeginTrans;
      tmpSql:= 'update opd_basic1 set PROJECT_TYPE ='+Qt(hav)+' where OPD_DATE=$OPD_DATE$ and fee_no=$FEE_NO$ ';
      SetParamter(tmpSql,'$OPD_DATE$',qt(GetEpdDate));
      SetParamter(tmpSql,'$FEE_NO$',qt(GetFeeNo));
      tmpqry.SQL.Text := tmpSql;
      tmpqry.ExecSQL;
      DM.ADOLink.CommitTrans;
    end
    else
    begin
      tmpSql:= 'select PROJECT_TYPE from opd_basic1 where OPD_DATE=$OPD_DATE$ and fee_no=$FEE_NO$ and PROJECT_TYPE=''Y'' ';
      SetParamter(tmpSql,'$OPD_DATE$',qt(GetEpdDate));
      SetParamter(tmpSql,'$FEE_NO$',qt(GetFeeNo));
      tmpqry.SQL.Text := tmpSql;
      tmpqry.Open;
      if not tmpqry.IsEmpty then
        Result := 'Y'
      else
        Result := 'N';
    end;
  except
    if (hav = 'N') or (hav = 'Y') then
    begin
      DM.ADOLink.RollbackTrans;
      //ShowMessage('LOCK 作業失敗(ERSFUNC:1860 LINE)');
    end;
    FreeAndNil(tmpqry);
  end;
  FreeAndNil(tmpqry);
end;

procedure SGridSort(sort,col: integer;Sender: TObject);
var
  i ,j ,l: Integer;
  slist1: TStrings;
begin
  slist1 := TStringList.Create;
  case Sort of
    1 : //小到大
    begin
      for i := 1 to TStringGrid(sender).RowCount -2 do
      begin
        for j := i + 1 to TStringGrid(sender).RowCount -1 do
        begin
          slist1.Clear;
          if TStringGrid(sender).Cells[col,i] >  TStringGrid(sender).Cells[col,j] then
          begin
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              slist1.Add(TStringGrid(sender).Cells[l,i]);
            TStringGrid(sender).Rows[i] := TStringGrid(sender).Rows[j];
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              TStringGrid(sender).Cells[l,j] := slist1.Strings[l];
          end;
        end;
      end;
    end;
    else
    begin
      for i := 1 to TStringGrid(sender).RowCount -2 do
      begin
        for j := i + 1 to TStringGrid(sender).RowCount -1 do
        begin
          slist1.Clear;
          if TStringGrid(sender).Cells[col,i] <  TStringGrid(sender).Cells[col,j] then
          begin
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              slist1.Add(TStringGrid(sender).Cells[l,j]);
            TStringGrid(sender).Rows[j] := TStringGrid(sender).Rows[i];
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              TStringGrid(sender).Cells[l,i] := slist1.Strings[l];
          end;
        end;
      end;
    end;
  end;
end;

procedure SGridSortnotitle(sort,col: integer;Sender: TObject);
var
  i ,j ,l: Integer;
  slist1: TStrings;
begin
  slist1 := TStringList.Create;
  case Sort of
    1 : //小到大
    begin
      for i := 0 to TStringGrid(sender).RowCount -1 do
      begin
        for j := i  to TStringGrid(sender).RowCount -1 do
        begin
          slist1.Clear;
          if TStringGrid(sender).Cells[col,i] >  TStringGrid(sender).Cells[col,j] then
          begin
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              slist1.Add(TStringGrid(sender).Cells[l,i]);
            TStringGrid(sender).Rows[i] := TStringGrid(sender).Rows[j];
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              TStringGrid(sender).Cells[l,j] := slist1.Strings[l];
          end;
        end;
      end;
    end;
    else
    begin
      for i := 0 to TStringGrid(sender).RowCount -1 do
      begin
        for j := i  to TStringGrid(sender).RowCount -1 do
        begin
          slist1.Clear;
          if TStringGrid(sender).Cells[col,i] <  TStringGrid(sender).Cells[col,j] then
          begin
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              slist1.Add(TStringGrid(sender).Cells[l,j]);
            TStringGrid(sender).Rows[j] := TStringGrid(sender).Rows[i];
            for l := 0 to  TStringGrid(sender).ColCount -1 do
              TStringGrid(sender).Cells[l,i] := slist1.Strings[l];
          end;
        end;
      end;
    end;
  end;
end;


function InsertLabLog(Datatype: string):string;
var
  SpName,ExeSPResult :String;
  Paramter,PType,RType,PData :TStrings;
begin
  Result := '';
  try
    Paramter:=TStringList.Create;
    PType:=TStringList.Create;
    RType:=TStringList.Create;
    PData:=TStringList.Create;
    SpName:='';
    SpName:=getSpSql(9,Paramter,PType,RType);
    PData.Add(getUserId);
    PData.Add(getChrNo);
    PData.Add('E');      //(需大寫)I : 住院、O : 門診、E : 急診、C : 中醫、D : 牙醫
    PData.Add(Datatype); //(需大寫)L:臨床工作站、U:unireport、T : 就診查詢
    ExeSPResult:=DM.ExecSP(Paramter,PType,RType,PData,SpName);
    if ReturnID(ExeSPResult) = 'N' then
    begin
      Result := '急診醫令處理"報告查詢紀錄寫入"程序時發生錯誤';
      sql_time_log('"報告查詢紀錄寫入"','急診醫令處理程序時發生錯誤');
    end;
  finally
    Paramter.Free;
    PType.Free;
    RType.Free;
    PData.Free;
  end;
end;


function checkphragno(DEPT_CODE, USER_ID, GROUP_CODE:string):string;
var
  tmpqry : TADOQuery;
  tmpSql : string;
begin
  Result := 'N';
  tmpqry := TADOQuery.Create(nil);
  tmpqry.Connection := DM.ADOLink;
  try
    tmpqry.Close;
    tmpSql:= 'select group_code from ORDER_GRP_BASIC where DEPT_CODE='+qt(DEPT_CODE)+' and USER_ID='+qt(USER_ID)+' and GROUP_CODE='+qt(GROUP_CODE);
    tmpqry.SQL.Text := tmpSql;
    tmpqry.Open;
    if not tmpqry.IsEmpty then
      Result := 'Y';
    tmpqry.Close;
  finally
    FreeAndNil(tmpqry);
  end;
end;

function getphraseno:string;
var
  tmpqry : TADOQuery;
  tmpSql : string;
begin
  tmpqry := TADOQuery.Create(nil);
  tmpqry.Connection := DM.ADOLink;
  tmpqry.Close;
  tmpSql:= 'select max(group_code) as group_code from ORDER_GRP_BASIC where group_code like ''ED%''';
  tmpqry.SQL.Text := tmpSql;
  tmpqry.Open;
  if trim(tmpqry.fieldbyname('group_code').AsString)<> '' then
  begin
    tmpSql := copy(trim(tmpqry.fieldbyname('group_code').AsString),3,6);
    try
      Result := AddChar(IntToStr(StrToInt(tmpSql)+1),'0',6);
    except on E: Exception do
      begin
        sql_time_log('ExecSQL:',E.Message+'getphraseno:套餐取號失敗');
        ShowMessage('套餐取號失敗');
      end;
    end;
  end
  else
    Result := '000000';
end;

end.
