unit SaveData;
//只開單不檢核
interface

uses Grids, Contnrs, Classes, Windows, ComCtrls;

function allSaveOrder(Sender : TObject;aGrd: TStringGrid):Boolean;
function saveopd_basic(insgrd:TStringGrid):string;
function saveepd_his(SAVCLS,ChengeEndDate,td,ttim: STRING):string;
function saveepd_sheet():string;
function saveopd_med(insgrd:TStringGrid):TStringList;
function saveopd_fee(insgrd:TStringGrid):string;
function saveopd_his(insgrd:TStringGrid):string;
function savemed_case_list(insgrd:TStringGrid):string;
function saveopd_exper(insgrd:TStringGrid):string;
function savelab_sche(insgrd:TStringGrid):string;
function saveopd_other(insgrd:TStringGrid):string;
function insertepdrecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME: string;RECORD_SEQ,all_seq:integer): string;


implementation

uses Commfunc, ERsFunc, Global, DBDM, MySQLc, SysUtils, Order;

function saveopd_med(insgrd:TStringGrid):TStringList;
var
  tmpSql: string;
  i : integer;
begin
  {if insgrd.ColCount> 0 then
    Result := TStringList.Create;
  for i := 0 to insgrd.ColCount-1 do
  begin
    tmpSql := othe_HIS(9);
    SetParamter(tmpSql,'$OPD_DATE$',qt(GetEpdDate));
    SetParamter(tmpSql,'$FEE_NO$',qt(GetFeeNo));
    SetParamter(tmpSql,'$SEQ_NO$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MED_CODE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$CHR_NO$',qt(GetFeeNo));
    SetParamter(tmpSql,'$FEE_KIND$',qt(GetFeeNo));
    SetParamter(tmpSql,'$FEE_TYPE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$DOC_CODE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$UNIT_QTY$',qt(GetFeeNo));
    SetParamter(tmpSql,'$PER_QTY$',qt(GetFeeNo));
    SetParamter(tmpSql,'$UNIT_TYPE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$UNIT_PACKS$',qt(GetFeeNo));
    SetParamter(tmpSql,'$CIR_CODE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MED_DAYS$',qt(GetFeeNo));
    SetParamter(tmpSql,'$PATH_CODE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$VACC_CNT$',qt(GetFeeNo));
    SetParamter(tmpSql,'$INJECT_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$GRIND_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$DEL_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$UNIT_DESC$',qt(GetFeeNo));
    SetParamter(tmpSql,'$FEE_UNIT_DESC$',qt(GetFeeNo));
    SetParamter(tmpSql,'$PACK_AMT$',qt(GetFeeNo));
    SetParamter(tmpSql,'$DISC_RATE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$INS_PAY_UAMT$',qt(GetFeeNo));
    SetParamter(tmpSql,'$SELF_PAY_UAMT$',qt(GetFeeNo));
    SetParamter(tmpSql,'$PART_UAMT$',qt(GetFeeNo));
    SetParamter(tmpSql,'$INJ_NO$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MORE_DAYS$',qt(GetFeeNo));
    SetParamter(tmpSql,'$SELF_PAY_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$TTL_QTY$',qt(GetFeeNo));
    SetParamter(tmpSql,'$TTL_MORE_QTY$',qt(GetFeeNo));
    SetParamter(tmpSql,'$FINAL_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$TTL_RTN_QTY$',qt(GetFeeNo));
    SetParamter(tmpSql,'$STOCK_DEPT_CODE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$DEPT_CODE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$RTN_DATE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$RTN_TIME$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MED_TYPE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MED_NO$',qt(GetFeeNo));
    SetParamter(tmpSql,'$PROG_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$HIA_REP_ID$',qt(GetFeeNo));
    SetParamter(tmpSql,'$PRINT_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$ORDER_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MED_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$UPD_OPER$',qt(GetFeeNo));
    SetParamter(tmpSql,'$UPD_DATE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$UPD_TIME$',qt(GetFeeNo));
    SetParamter(tmpSql,'$CONF_DATE$',qt(GetFeeNo));
    SetParamter(tmpSql,'$CHEMO_SERIAL$',qt(GetFeeNo));
    SetParamter(tmpSql,'$CON_FLAG$',qt(GetFeeNo));
    SetParamter(tmpSql,'$SHEET_NO$',qt(GetFeeNo));
    SetParamter(tmpSql,'$PRINT_FLAG2$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MED_CMD$',qt(GetFeeNo));
    SetParamter(tmpSql,'$ORI_SEQ_NO$',qt(GetFeeNo));
    SetParamter(tmpSql,'$MED_OP_CHECK$',qt(GetFeeNo));
    Result.Add(tmpSql);
  end;}
end;

function saveopd_fee(insgrd:TStringGrid):string;
begin
//
end;

function saveopd_his(insgrd:TStringGrid):string;
begin
//
end;

function savemed_case_list(insgrd:TStringGrid):string;
begin
//
end;

function saveopd_exper(insgrd:TStringGrid):string;
begin
//
end;

function savelab_sche(insgrd:TStringGrid):string;
begin
//
end;

function saveopd_other(insgrd:TStringGrid):string;
begin
//
end;

function saveepd_sheet():string;
var
  tmpSql: string;
begin
  tmpSql := othe_HIS(8);
  SetParamter(tmpSql,'$FEE_NO$',qt(GetFeeNo));
  SetParamter(tmpSql,'$SHEET_NO$',qt(''));//此序號串各table
  SetParamter(tmpSql,'$FEE_DATE$',qt(GetEpdDate));
  SetParamter(tmpSql,'$FEE_TIME$',qt(GetEpdTime));
  SetParamter(tmpSql,'$S$',qt(trim(FrmOrder.rheSub.Lines.Text)));
  SetParamter(tmpSql,'$O$',qt(trim(FrmOrder.rheObj.Lines.Text)));
  SetParamter(tmpSql,'$A$',qt(trim(FrmOrder.rheHist.Lines.Text)));
  SetParamter(tmpSql,'$P$',qt(trim(FrmOrder.rhePlan.Lines.Text)));
  SetParamter(tmpSql,'$UPD_DATE$',qt(ROCDate(Now,'')));
  SetParamter(tmpSql,'$UPD_OPER$',qt(getUserId));
  SetParamter(tmpSql,'$UPD_TIME$',qt(ROCTime(Now,'')));
  SetParamter(tmpSql,'$VS_DOC_CODE$',qt(GetVsCode));
  SetParamter(tmpSql,'$MED_NO$',qt(''));
end;

function saveepd_his(SAVCLS,ChengeEndDate,td,ttim: STRING):string;
var
  tmpSql: string;
begin
  tmpSql := othe_HIS(1);
  IF SAVCLS = 'N' THEN//暫存
  BEGIN
    SetParamter(tmpSql,'$expression$','ICD9_CODE1=$ICD9_CODE1$,ICD9_CODE2=$ICD9_CODE2$,'+
                       'upd_oper=$UPD_OPER$,upd_date=$UPD_DATE$,upd_time=$UPD_TIME$,class_no=$CLASS_NO$,END_DATE=$END_DATE$,EPD_STATUS=$EPD_STATUS$');
    SetParamter(tmpSql,'$END_DATE$',qt('9999999'));
    SetParamter(tmpSql,'$EPD_STATUS$',qt('0'));
  END
  ELSE
  BEGIN
    if ChengeEndDate = 'Y' then
    begin
      SetParamter(tmpSql,'$expression$','ICD9_CODE1=$ICD9_CODE1$,ICD9_CODE2=$ICD9_CODE2$,END_DATE=$END_DATE$,END_TIME=$END_TIME$,'+
                         'upd_oper=$UPD_OPER$,upd_date=$UPD_DATE$,upd_time=$UPD_TIME$,class_no=$CLASS_NO$,EPD_STATUS=$EPD_STATUS$');
      SetParamter(tmpSql,'$END_DATE$',qt(td));
      SetParamter(tmpSql,'$END_TIME$',qt(ttim));
    end
    else
    begin
      SetParamter(tmpSql,'$expression$','ICD9_CODE1=$ICD9_CODE1$,ICD9_CODE2=$ICD9_CODE2$,'+
                         'upd_oper=$UPD_OPER$,upd_date=$UPD_DATE$,upd_time=$UPD_TIME$,class_no=$CLASS_NO$,EPD_STATUS=$EPD_STATUS$');
    end;
    SetParamter(tmpSql,'$EPD_STATUS$',qt('3'));
  END;
  SetParamter(tmpSql,'$ICD9_CODE1$',qt(trim(FrmOrder.SGIcd.Cells[0,1])));
  SetParamter(tmpSql,'$ICD9_CODE2$',qt(trim(FrmOrder.SGIcd.Cells[0,2])));
  SetParamter(tmpSql,'$UPD_OPER$',qt(getUserId));
  SetParamter(tmpSql,'$CLASS_NO$',Qt(IntToStr(FrmOrder.CBtriage.ItemIndex+1)));
  SetParamter(tmpSql,'$UPD_DATE$',qt(td));
  SetParamter(tmpSql,'$UPD_TIME$',qt(ttim));
  SetParamter(tmpSql,'$FEE_NO$',qt(GetFeeNo));
  SetParamter(tmpSql,'$EPDDATE$',Qt(Trim(GetEpdDate)));
  Result := tmpSql;
end;

function saveopd_basic(insgrd:TStringGrid):string;
var
  tmpSql: string;
begin
  tmpSql := othe_HIS(2);
  SetParamter(tmpSql,'$expression$','ICD9_CODE1=$ICD9_CODE1$,ICD9_CODE2=$ICD9_CODE2$,ICD9_CODE3=$ICD9_CODE3$,med_days=$MED_DAYS$,End_date=$END_DATE$,hia_doc=$HIA_DOC$,'+
                     'print_flag=$PRINT_FLAG$,sub_desc=sub_desc || $SUB_DESC$ ,OBJ_DESC=OBJ_DESC || $OBJ_DESC$,SUB_DESC2= SUB_DESC2 || $SUB_DESC2$,PLAN_DESC=PLAN_DESC || $PLAN_DESC$ '+
                     ',upd_oper=$UPD_OPER$,upd_date=$UPD_DATE$,upd_time=$UPD_TIME$');
  if trim(insgrd.Cells[0,1]) = '' then
    SetParamter(tmpSql,'$ICD9_CODE1$',qt(' '))
  else
    SetParamter(tmpSql,'$ICD9_CODE1$',qt(trim(insgrd.Cells[0,1])));
  SetParamter(tmpSql,'$ICD9_CODE2$',qt(trim(insgrd.Cells[0,2])));
  SetParamter(tmpSql,'$ICD9_CODE3$',qt(trim(insgrd.Cells[0,3])));
  if trim(FrmOrder.rheSub.Lines.Text) = '' then
    SetParamter(tmpSql,'$SUB_DESC$',qt(' '))
  else
    SetParamter(tmpSql,'$SUB_DESC$',qt(trim(FrmOrder.rheSub.Lines.Text)));
  SetParamter(tmpSql,'$OBJ_DESC$',qt(trim(FrmOrder.rheObj.Lines.Text)));
  SetParamter(tmpSql,'$SUB_DESC2$',qt(trim(FrmOrder.rheHist.Lines.Text)));
  SetParamter(tmpSql,'$PLAN_DESC$',qt(trim(FrmOrder.rhePlan.Lines.Text)));
  //SetParamter(tmpSql,'$MED_DAYS$',qt(IntToStr(MaxMedDays('',insgrd,))));
  SetParamter(tmpSql,'$END_DATE$',qt(GetEpdDate));
  SetParamter(tmpSql,'$HIA_DOC$',qt(GetVsCode));
  SetParamter(tmpSql,'$PRINT_FLAG$',qt('N'));
  SetParamter(tmpSql,'$UPD_OPER$',qt(getUserId));
  SetParamter(tmpSql,'$UPD_DATE$',qt(ROCDate(Now,'')));
  SetParamter(tmpSql,'$UPD_TIME$',qt(ROCTime(Now,'')));
  SetParamter(tmpSql,'$OPD_DATE$',qt(GetEpdDate));
  SetParamter(tmpSql,'$FEE_NO$',qt(GetFeeNo));
  Result := tmpSql;
end;

function insertepdrecord(kind,TEXT,STATUS,UPD_DATE,UPD_TIME: string;RECORD_SEQ,all_seq:integer): string;
var
  q_str : string;
begin
  q_str := GETEPDRECORD(0);
  SetParamter(q_str,'$FEE_NO$',qt(getFeeNo));
  SetParamter(q_str,'$KIND$',qt(kind));
  SetParamter(q_str,'$SEQ_NO$',IntToStr(RECORD_SEQ_no));
  SetParamter(q_str,'$TEXT$',qt(TEXT));
  SetParamter(q_str,'$ORDER_SORT$',qt(STATUS));
  SetParamter(q_str,'$ALLORDER_NO$',IntToStr(all_seq));
  SetParamter(q_str,'$UPD_OPER$',qt(getUserId));
  SetParamter(q_str,'$UPD_DATE$',qt(UPD_DATE));
  SetParamter(q_str,'$UPD_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$VS_CODE$',qt(GetVsCode));
  SetParamter(q_str,'$ORDER_DATE$',Qt(GetEpdDate));
  SetParamter(q_str,'$ORDER_TIME$',qt(UPD_TIME));
  SetParamter(q_str,'$DEL_FLAG$',qt('N'));  
  Result := q_str;
end;

function allSaveOrder(Sender : TObject;aGrd: TStringGrid):Boolean;
var
  i, J: integer;
  SQLo: TObjectList;
  SQLs: TStrings;
  QryList: TStringList;
  isRePeat, havdata: Boolean;
  tmpSql, DD, DTIM, ICD9, oldseq, oldsheetno, STROLDSEQNO, oldlabno: String;
begin
  Result := True;
  try
    QryList:=TStringList.Create;
    isRePeat := False;
    SQLo := TObjectList.Create;
    //他院
   {       10001 掛號費
    i.	   10002 診察費
    ii.	   10003 部分負擔
    iii.	 10004 藥服費
    iv.	   10005 藥品部分負擔
    v.	   10007 中醫藥品或中醫傷科部份負擔,復健部份負擔
    vi.	   10010 中醫每日藥費(一般案件給藥天數不得超過七日)
    vii.	 30000-39999 衛材
    viii.	 40000-49999 檢驗
    ix.	   50000-59999 放射
    x.	   60000-69999 排程
    xi.	   70000-79999 處置
    xii.	 80000-99999 藥品
    xiii.	 藥品： opd_med、opd_his、 med_case_list(如有開立事審藥時)
    xiv.	 檢驗：opd_fee、 opd_his、opd_exper
    xv.	   放射：(1)一般xray：opd_fee、opd_his、opd_xray
    xvi.	       (2)CT/MRI、特殊：opd_fee、opd_his、 lab_sche
    xvii.	 檢查：opd_fee、opd_his、 lab_sche
    xviii. 衛材/處置：opd_fee、opd_his
    xix.	 敘訴醫令 : opd_other)
    }
    //get seq_no
    //ICD9 第3以後的

    //SOAP RU4

    //opd_basic update

    //opd_med,opd_his,med_case_list
    //opd_exper,opd_his,opd_fee
    //opd_xray,
    //lab_sche
    //opd_other

    //自己

    //get seq_no
    if not GetMaxNo then
    begin
      Result := False;
      Exit;
    end;
    inc(RECORD_no);
    DD := ROCDate(Now,'');
    DTIM:= ROCTimes(Now,'');
    //opd_basic1
    havdata := False;
    tmpSql := sql_str(4);
    //SetParamter(tmpSql,'$opd_date$',qt(GetEpdDate));
    SetParamter(tmpSql,'$fee_no$',qt(getFeeNo));
    //SetParamter(tmpSql,'$chr_no$',qt(getChrNo));
    DM.QrySearch.SQL.Text := tmpSql;
    dm.QrySearch.Open;
    dm.QrySearch.Last;
    DM.QrySearch.First;
    if DM.QrySearch.RecordCount > 0 then
      havdata := True;
    //檢傷
    DM.QrySubSearch.Close;
    tmpSql := GETEPDRECORD(1);
    tmpSql := tmpSql +' where id_no=$ID_NO$ and arrival_date=$DATE_TIME3$';
    SetParamter(tmpSql,'$ID_NO$',qt(GetIdNo));
    SetParamter(tmpSql,'$DATE_TIME3$',qt(FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))));//qt(IntToStr(StrToInt64(Trim(GetEpdDate))+19110000)+IntToStr(StrToInt64(COPY(Trim(GetEpdTime),1,3)))));
    DM.QrySubSearch.SQL.Text := tmpSql;
    DM.QrySubSearch.Open;
    if DM.QrySubSearch.IsEmpty then
    begin
      DM.QrySubSearch.Close;
      tmpSql := GETEPDRECORD(1);
      tmpSql := tmpSql +' where id_no=''*'' and arrival_date=$DATE_TIME3$ and arrival_time LIKE $TIME$';
      SetParamter(tmpSql,'$TIME$',qt(COPY(Trim(GetEpdTime),1,3)+'%'));
      SetParamter(tmpSql,'$DATE_TIME3$',qt(FormatDateTime('YYYYMMDD',ROCToDate(GetEpdDate))));//qt(IntToStr(StrToInt64(Trim(GetEpdDate))+19110000)+IntToStr(StrToInt64(COPY(Trim(GetEpdTime),1,3)))));
      DM.QrySubSearch.SQL.Text := tmpSql;
      DM.QrySubSearch.Open;
    end;
    IF (RECORD_no = 1)  THEN
    begin
      QryList.Add('#P#檢傷級數 : '+Trim(DM.QrySubSearch.FieldByName('triage_level').AsString));
      QryList.Add(charadd('體溫 :'+Trim(DM.QrySubSearch.FieldByName('temperature').AsString)+'℃',' ',14)+charadd('呼吸 :'+Trim(DM.QrySubSearch.FieldByName('resp').AsString)+'次',' ',14)+
                  CharAdd('脈搏 :'+Trim(DM.QrySubSearch.FieldByName('pulse').AsString)+'次',' ',14)+CharAdd('舒張壓/收縮壓 :'+Trim(DM.QrySubSearch.FieldByName('diastolic').AsString)+'/'+Trim(DM.QrySubSearch.FieldByName('systolic').AsString)+'mmHg',' ',40));
      QryList.Add(charadd('意識狀態 : E'+Trim(DM.QrySubSearch.FieldByName('CONSCIOUS_COMA_E').AsString)+' V'+Trim(DM.QrySubSearch.FieldByName('CONSCIOUS_COMA_V').AsString)+' M'+Trim(DM.QrySubSearch.FieldByName('CONSCIOUS_COMA_M').AsString),' ',28)+
                  charadd('體重 :'+Trim(DM.QrySubSearch.FieldByName('weight').AsString)+'kg',' ',20)+charadd('血氧濃度 : '+Trim(DM.QrySubSearch.FieldByName('spo2').AsString)+'%',' ',16)   );
      QryList.Add('主訴:'+Trim(DM.QrySubSearch.FieldByName('soap').AsString));

      for i := 0 to QryList.Count-1 do
      begin
        SQLs := TStringList.Create;
        Inc(RECORD_SEQ_no);
        SQLs.Add(insertepdrecord('T_TRIAGE',QryList.Strings[i],'N',DD,DTIM,RECORD_SEQ_no,RECORD_no));
        SQLo.Add(SQLs);
      end;
    end;

    if Length(Trim(DM.QrySearch.FieldByName('NOTE1').AsString)) <> Length(Trim(pkg_Sub)) then
    begin
      isRePeat := True;
      IF Trim(pkg_Sub)<> '' THEN
      BEGIN
        SQLs := TStringList.Create;
        Inc(RECORD_SEQ_no);
        SQLs.Add(insertepdrecord('O_SUBJECT','【'+Trim(pkg_Sub),'N',DD,DTIM,RECORD_SEQ_no,RECORD_no));
        SQLo.Add(SQLs);
      END;
    end;

    if Length(Trim(DM.QrySearch.FieldByName('NOTE2').AsString)) <> Length(Trim(pkg_Obj)) then
    begin
      isRePeat := True;
      IF Trim(pkg_Obj)<> '' THEN
      BEGIN
        SQLs := TStringList.Create;
        Inc(RECORD_SEQ_no);
        SQLs.Add(insertepdrecord('O_OJECT','【'+Trim(pkg_Obj),'N',DD,DTIM,RECORD_SEQ_no,RECORD_no));
        SQLo.Add(SQLs);
      END;
    end;

    if Length(Trim(DM.QrySearch.FieldByName('FEE_CONTEN').AsString)) <> Length(Trim(pkg_Plan)) then
    begin
      isRePeat := True;
      IF Trim(pkg_Plan)<> '' THEN
      BEGIN
        SQLs := TStringList.Create;
        Inc(RECORD_SEQ_no);
        SQLs.Add(insertepdrecord('O_PLAN','【'+Trim(pkg_Plan),'N',DD,DTIM,RECORD_SEQ_no,RECORD_no));
        SQLo.Add(SQLs);
      END;
    end;

    for i := 1 to 10 do
    begin
      IF (TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString)='') THEN
        ICD9 := 'N'
      ELSE
        ICD9 := '';
      IF ICD9 = '' THEN
        FOR J := 1 TO 10 DO
        BEGIN
          IF (TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString) = Trim(sgi_pkg.Cells[0,J])) THEN
          BEGIN
           ICD9 := 'O';
           Break;
          END
          ELSE
           ICD9 := 'D';
        END;
      if ICD9 <> 'O' then
      begin
        IF ICD9 <> 'D' THEN
        BEGIN
          IF Trim(sgi_pkg.Cells[0,I])<> '' THEN
          BEGIN
            SQLs := TStringList.Create;
            Inc(RECORD_SEQ_no);
            SQLs.Add(insertepdrecord('A_ASSESSMENT',CharAdd(Trim(sgi_pkg.Cells[0,I]),' ',12)+Trim(FulltoHalf(sgi_pkg.Cells[1,I])),ICD9,DD,DTIM,RECORD_SEQ_no,RECORD_no));
            SQLo.Add(SQLs);
          END;
        END
        ELSE
        BEGIN
          SQLs := TStringList.Create;
          Inc(RECORD_SEQ_NO);
          SQLs.Add(insertepdrecord('A_ASSESSMENT',CharAdd(TRIM(DM.QrySearch.FieldByName('ICD9_CODE'+IntToStr(I)).AsString),' ',12)+Trim(FulltoHalf(TRIM(DM.QrySearch.FieldByName('ICD9_DESC'+IntToStr(I)).AsString))),ICD9,DD,DTIM,RECORD_SEQ_NO,RECORD_no));
          SQLo.Add(SQLs);
        END;
      end;
    end;
    IF havdata THEN
    BEGIN
      tmpSql := sql_str(14);
      SetParamter(tmpSql,'$med_no$',Qt(''));
      SetParamter(tmpSql,'$case_type$',qt(' '));
      SetParamter(tmpSql,'$part_code$',Qt(' '));
      SetParamter(tmpSql,'$med_days$','0');
      if Trim(sgi_pkg.Cells[0,1]) = '' then
        SetParamter(tmpSql,'$icd9_code1$',qt(' '))
      else
        SetParamter(tmpSql,'$icd9_code1$',qt(Trim(sgi_pkg.Cells[0,1])));
      SetParamter(tmpSql,'$ICD9_CODE2$',qt(Trim(sgi_pkg.Cells[0,2])));
      SetParamter(tmpSql,'$ICD9_CODE3$',qt(Trim(sgi_pkg.Cells[0,3])));
      SetParamter(tmpSql,'$ICD9_CODE4$',qt(Trim(sgi_pkg.Cells[0,4])));
      SetParamter(tmpSql,'$ICD9_CODE5$',qt(Trim(sgi_pkg.Cells[0,5])));
      SetParamter(tmpSql,'$ICD9_CODE6$',qt(Trim(sgi_pkg.Cells[0,6])));
      SetParamter(tmpSql,'$ICD9_CODE7$',qt(Trim(sgi_pkg.Cells[0,7])));
      SetParamter(tmpSql,'$ICD9_CODE8$',qt(Trim(sgi_pkg.Cells[0,8])));
      SetParamter(tmpSql,'$ICD9_CODE9$',qt(Trim(sgi_pkg.Cells[0,9])));
      SetParamter(tmpSql,'$ICD9_CODE10$',qt(Trim(sgi_pkg.Cells[0,10])));
      SetParamter(tmpSql,'$ICD9_DESC1$',qt(Trim(sgi_pkg.Cells[2,1])));
      SetParamter(tmpSql,'$ICD9_DESC2$',qt(Trim(sgi_pkg.Cells[2,2])));
      SetParamter(tmpSql,'$ICD9_DESC3$',qt(Trim(sgi_pkg.Cells[2,3])));
      SetParamter(tmpSql,'$ICD9_DESC4$',qt(Trim(sgi_pkg.Cells[2,4])));
      SetParamter(tmpSql,'$ICD9_DESC5$',qt(Trim(sgi_pkg.Cells[2,5])));
      SetParamter(tmpSql,'$ICD9_DESC6$',qt(Trim(sgi_pkg.Cells[2,6])));
      SetParamter(tmpSql,'$ICD9_DESC7$',qt(Trim(sgi_pkg.Cells[2,7])));
      SetParamter(tmpSql,'$ICD9_DESC8$',qt(Trim(sgi_pkg.Cells[2,8])));
      SetParamter(tmpSql,'$ICD9_DESC9$',qt(Trim(sgi_pkg.Cells[2,9])));
      SetParamter(tmpSql,'$ICD9_DESC10$',qt(Trim(sgi_pkg.Cells[2,10])));
      SetParamter(tmpSql,'$NOTE1$',qt(trim(pkg_Sub)));
      SetParamter(tmpSql,'$NOTE2$',qt(Trim(pkg_Obj)));
      SetParamter(tmpSql,'$first_date$',qt(''));
      SetParamter(tmpSql,'$first_ins_seq_no$',qt(''));
      SetParamter(tmpSql,'$DIAG_FLAG$',qt('N'));
      //SetParamter(tmpSql,'$PRINT_FLAG$',Qt(''));
      SetParamter(tmpSql,'$VOTE_TYPE$',Qt(''));
      SetParamter(tmpSql,'$FEE_CONTEN$',qt(Trim(pkg_Plan)));
      SetParamter(tmpSql,'$UPD_OPER$',qt(getUserId));
      SetParamter(tmpSql,'$UPD_DATE$',qt(ROCDate(Now,'')));
      SetParamter(tmpSql,'$UPD_TIME$',qt(ROCTime(Now,'')));
      SetParamter(tmpSql,'$hx$',qt(''));
      SetParamter(tmpSql,'$opd_date$',qt(GetEpdDate));
      SetParamter(tmpSql,'$fee_no$',qt(getFeeNo));
      SetParamter(tmpSql,'$PAIN_SCORE$',Qt(''));
      SetParamter(tmpSql,'$PAY_TYPE$',Qt(''));
      SetParamter(tmpSql,'$INS_SEQ_NO$',Qt(''));
      SetParamter(tmpSql,'$TRIAGE_LEVEL$',Qt(Trim(DM.QrySubSearch.FieldByName('triage_level').AsString)));
      SetParamter(tmpSql,'$EXE_DOC$','EXE_DOC');
      SetParamter(tmpSql,'$INS_DOC$','INS_DOC');
      SetParamter(tmpSql,'$DOC_CODE$','DOC_CODE');

      SQLs := TStringList.Create;
      SQLs.Add(tmpSql);
      SQLo.Add(SQLs);
    END
    ELSE
    begin
      tmpSql := sql_str(5);
      SetParamter(tmpSql,':OPD_KIND',qt('E'));
      SetParamter(tmpSql,':OPD_DATE',qt(GetEpdDate));
      SetParamter(tmpSql,':DEPT_CODE',qt(GetPatDept));
      SetParamter(tmpSql,':SHIFT_NO',qt(Getshiftno));
      SetParamter(tmpSql,':DEPT_ROOM',qt(GetdeptRoom));
      SetParamter(tmpSql,':DOC_CODE',qt(getUserId));
      SetParamter(tmpSql,':SEQ_NO',qt(GetPatId));
      SetParamter(tmpSql,':CHR_NO',qt(GetChrNo));
      SetParamter(tmpSql,':FEE_NO',qt(GetFeeNo));
      SetParamter(tmpSql,':PAT_ID',Qt(Getpartid));
      SetParamter(tmpSql,':INS_SEQ_NO',Qt(''));
      SetParamter(tmpSql,':PROG_FLAG',qt('N'));
      if Trim(sgi_pkg.Cells[0,1]) = '' then
        SetParamter(tmpSql,':ICD9_CODEa',qt(' '))
      else
        SetParamter(tmpSql,':ICD9_CODEa',qt(Trim(sgi_pkg.Cells[0,1])));
      SetParamter(tmpSql,':ICD9_CODE1',qt(Trim(sgi_pkg.Cells[0,2])));
      SetParamter(tmpSql,':ICD9_CODE2',qt(Trim(sgi_pkg.Cells[0,3])));
      SetParamter(tmpSql,':ICD9_CODE3',qt(Trim(sgi_pkg.Cells[0,4])));
      SetParamter(tmpSql,':ICD9_CODE4',qt(Trim(sgi_pkg.Cells[0,5])));
      SetParamter(tmpSql,':ICD9_DESCa',qt(Trim(sgi_pkg.Cells[2,1])));
      SetParamter(tmpSql,':ICD9_DESC1',qt(Trim(sgi_pkg.Cells[2,2])));
      SetParamter(tmpSql,':ICD9_DESC2',qt(Trim(sgi_pkg.Cells[2,3])));
      SetParamter(tmpSql,':ICD9_DESC3',qt(Trim(sgi_pkg.Cells[2,4])));
      SetParamter(tmpSql,':ICD9_DESC4',qt(Trim(sgi_pkg.Cells[2,5])));
      SetParamter(tmpSql,':PROJECT_TYPE',Qt(''));
      SetParamter(tmpSql,':CASE_TYPE',qt(''));
      SetParamter(tmpSql,':MED_DAYS','0');
      SetParamter(tmpSql,':first_date',qt(''));
      SetParamter(tmpSql,':first_ins_seq_no',qt(''));
      SetParamter(tmpSql,':DIAG_FLAG',qt(''));
      SetParamter(tmpSql,':PAT_NAME',qt(getPatName));
      SetParamter(tmpSql,':NOTE1',qt(trim(pkg_Sub)));
      SetParamter(tmpSql,':NOTE2',qt(Trim(pkg_Obj)));
      SetParamter(tmpSql,':UPD_OPER',qt(getUserId));
      SetParamter(tmpSql,':UPD_DATE',qt(ROCDate(Now,'')));
      SetParamter(tmpSql,':UPD_TIME',qt(ROCTime(Now,'')));
      SetParamter(tmpSql,':UPD_IP',Qt(''));
      SetParamter(tmpSql,':DISC_CODE',qt(' '));
      SetParamter(tmpSql,':PART_CODE',Qt(' '));
      SetParamter(tmpSql,':MED_TYPE',qt('1'));
      SetParamter(tmpSql,':MED_NO',Qt(''));
      SetParamter(tmpSql,':ORDER_FLAG',Qt(''));
      SetParamter(tmpSql,':LAB_FLAG',Qt(''));
      SetParamter(tmpSql,':PRINT_FLAG',Qt('1'));
      SetParamter(tmpSql,':VOTE_TYPE',Qt(''));
      SetParamter(tmpSql,':EXE_DOC',qt(getorderdoc));
      SetParamter(tmpSql,':INS_DOC',qt(GetVsCode));
      SetParamter(tmpSql,':FEAT_DOC',qt(Getvsfeatcode));
      SetParamter(tmpSql,':FEE_CONTEN',qt(Trim(pkg_Plan)));
      SetParamter(tmpSql,':ICD9_CODE5',qt(Trim(sgi_pkg.Cells[0,6])));
      SetParamter(tmpSql,':ICD9_CODE6',qt(Trim(sgi_pkg.Cells[0,7])));
      SetParamter(tmpSql,':ICD9_CODE7',qt(Trim(sgi_pkg.Cells[0,8])));
      SetParamter(tmpSql,':ICD9_CODE8',qt(Trim(sgi_pkg.Cells[0,9])));
      SetParamter(tmpSql,':ICD9_CODE9',qt(Trim(sgi_pkg.Cells[0,10])));
      SetParamter(tmpSql,':ICD9_DESC5',qt(Trim(sgi_pkg.Cells[2,6])));
      SetParamter(tmpSql,':ICD9_DESC6',qt(Trim(sgi_pkg.Cells[2,7])));
      SetParamter(tmpSql,':ICD9_DESC7',qt(Trim(sgi_pkg.Cells[2,8])));
      SetParamter(tmpSql,':ICD9_DESC8',qt(Trim(sgi_pkg.Cells[2,9])));
      SetParamter(tmpSql,':ICD9_DESC9',qt(Trim(sgi_pkg.Cells[2,10])));
      SetParamter(tmpSql,':Hx',qt(''));
      SetParamter(tmpSql,':PE',Qt(''));
      SetParamter(tmpSql,':PAIN_SCORE',Qt(''));
      SetParamter(tmpSql,':PAY_TYPE',Qt(''));
      SetParamter(tmpSql,':TRIAGE_LEVEL',Qt(Trim(DM.QrySubSearch.FieldByName('triage_level').AsString)));
      SQLs := TStringList.Create;
      SQLs.Add(tmpSql);
      SQLo.Add(SQLs);
    END;

    if (sgM_pkg.RowCount > 1) and (Trim(sgM_pkg.Cells[3,0])<> '') then //用藥
        begin
          for i := 0 to sgM_pkg.RowCount-1 do
          begin
            if (TRim(sgM_pkg.Cells[3,i])<>'' ) and (Trim(sgM_pkg.Cells[4,i])<> '')  then
            begin
              {if (sgM_pkg.Cells[Del,i] = 'X') and (sgM_pkg.Cells[modifyType,i] = 'R') then //刪除
              begin
                tmpSql := sql_str(8);
                SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(tmpSql,'$ORDER_DATE$',Qt(getUserId));
                SetParamter(tmpSql,'$DC_DATE$',Qt(ROCDate(now,'')));
                SetParamter(tmpSql,'$DC_TIME$',Qt(ROCTime(now,'')));
                SetParamter(tmpSql,'$DC_OPER$',Qt(getorderdoc));
                SetParamter(tmpSql,'$SO_FLAG$',qt(OrderType));
                SetParamter(tmpSql,'$FEE_CODE$',Qt(trim(sgM_pkg.Cells[M_code,i])));
                SetParamter(tmpSql,'$SEQ_NO$',Qt(trim(sgM_pkg.Cells[Seq,i])));
                SQLs := TStringList.Create;
                SQLs.Add(tmpSql);
                SQLo.Add(SQLs);

                //找舊資料
                DM.QrySubSearch.Close;
                tmpSql:=sql_str(9);
                SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
                SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
                SetParamter(tmpSql,'$SO_FLAG$',Qt(OrderType));
                SetParamter(tmpSql,'$FEE_CODE$',Qt(trim(sgM_pkg.Cells[M_code,i])));
                SetParamter(tmpSql,'$SEQ_NO$',Qt(trim(sgM_pkg.Cells[Seq,i])));
                DM.QrySubSearch.SQL.Text := tmpSql;
                DM.QrySubSearch.Open;
                if not DM.QrySubSearch.IsEmpty then
                begin
                  oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
                  oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
                  STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SEQ_NO').AsString);
                  oldlabno :=  Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
                end
                else
                begin}
                  oldseq := '';
                  oldsheetno := '';
                  STROLDSEQNO := '';
                  oldlabno := '';
                //end;
              //end;
              //DM.QrySubSearch.Close;
              //新增
              tmpSql := sql_str(10);
              SQLs := TStringList.Create;
              Inc(all_sheet_no);
              Inc(RECORD_SEQ_no);
              SetParamter(tmpSql,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//日期加3碼流水號
              SetParamter(tmpSql,'$SEQ$',qt(IntToStr(all_seq)));//開單次數
              SetParamter(tmpSql,'$ORDER_TEXT$',Qt(' '));
              SetParamter(tmpSql,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000 起跳
              SetParamter(tmpSql,'$FEE_NO$',qt(getFeeNo));
              SetParamter(tmpSql,'$ORDER_DATE$',qt(GetEpdDate));
              SetParamter(tmpSql,'$ORDER_TIME$',qt(ROCTimes(Now,'')));
              SetParamter(tmpSql,'$SO_FLAG$',qt('M'));//M 藥物 P排程 L檢驗 C檢查 X放射 O衛材 F 一般批價項目
              SetParamter(tmpSql,'$FEE_CODE$',qt(trim(sgM_pkg.Cells[3,i])));
              SetParamter(tmpSql,'$FEE_NAME$',qt(trim(sgM_pkg.Cells[4,i])));
              SetParamter(tmpSql,'$ORDER_DOC$',qt(getorderdoc));
              SetParamter(tmpSql,'$ORDER_TYPE$',Qt(''));//醫囑類型
              SetParamter(tmpSql,'$ORDER_DAYS$',qt(trim(sgM_pkg.Cells[8,i])));//天數
              SetParamter(tmpSql,'$QTY_NUM$',Qt(trim(sgM_pkg.Cells[5,i])));//數量
              SetParamter(tmpSql,'$UNIT_DESC$',Qt(trim(sgM_pkg.Cells[6,i])));//單位
              SetParamter(tmpSql,'$CIR_CODE$',Qt(trim(sgM_pkg.Cells[7,i])));//頻率
              SetParamter(tmpSql,'$PATH_CODE$',Qt(trim(sgM_pkg.Cells[9,i])));//途徑
              SetParamter(tmpSql,'$SELF_PAY_FLAG$',qt(trim(sgM_pkg.Cells[12,i])));//自費狀態
              SetParamter(tmpSql,'$URG_FLAG$',qt('N'));//急作
              {if (sgM_pkg.Cells[Del,i]='X') then
              begin
                SetParamter(tmpSql,'$DC_FLAG$',Qt('Y'));
                SetParamter(tmpSql,'$DEL_FLAG$',qt('Y'));
              end
              else
              begin }
                SetParamter(tmpSql,'$DC_FLAG$',Qt('N'));
                SetParamter(tmpSql,'$DEL_FLAG$',qt('N'));
              //end;
              SetParamter(tmpSql,'$UPD_OPER$',qt(getorderdoc));
              SetParamter(tmpSql,'$UPD_DATE$',qt(ROCDate(Now,'')));
              SetParamter(tmpSql,'$UPD_TIME$',qt(ROCTimeS(Now,'')));
              SetParamter(tmpSql,'$LAB_NO$',Qt(oldlabno));//單號
              SetParamter(tmpSql,'$MEMO_DESC$',Qt(trim(sgM_pkg.Cells[13,i])));//說明
              SetParamter(tmpSql,'$KEYIN_USER$',Qt(''));//KEY IN 人員
              SetParamter(tmpSql,'$PROG_FLAG$',Qt(''));//專案
              SetParamter(tmpSql,'$PRINT_FLAG$',qt('Y')); //是否列印Y:列印 N:無列印
              SetParamter(tmpSql,'$ARRG_FLAG$',Qt(''));//Y:排程項 N:非排程項
              SetParamter(tmpSql,'$Exper_type$',Qt(''));//每日劑量
              SetParamter(tmpSql,'$Exper_class$',Qt(trim(sgM_pkg.Cells[14,i])));//包裝量
              SetParamter(tmpSql,'$Part_code$',qt(''));//部位
              SetParamter(tmpSql,'$GRIND_FLAG$',Qt(trim(sgM_pkg.Cells[15,i])));//磨粉
              SetParamter(tmpSql,'$PAY_FLAG$',qt(trim(sgM_pkg.Cells[12,i])));//自費健保
              SetParamter(tmpSql,'$TTL_QTY$',trim(sgM_pkg.Cells[11,i]));//總量
              SetParamter(tmpSql,'$FEE_UNIT$',Qt(trim(sgM_pkg.Cells[10,i])));//計價單位
              SetParamter(tmpSql,'$FEE_CODE1$',qt(trim(sgM_pkg.Cells[3,i])));
              SetParamter(tmpSql,'$FEE_NO1$',qt(getFeeNo));
              SetParamter(tmpSql,'$ORDER_SEQ$',qt(oldseq));
              SetParamter(tmpSql,'$DC_SHEET_NO$',qt(oldsheetno));
              SetParamter(tmpSql,'$oldSEQ_NO$',qt(STROLDSEQNO));
              SetParamter(tmpSql,'$REPRT_STATUS$',qt('N'));
              SetParamter(tmpSql,'$NUS_OPER$',qt(''));
              SetParamter(tmpSql,'$VS_DOC$',qt(GetVsCode));
              SetParamter(tmpSql,'$JOIN_NO$',qt(Trim(sgM_pkg.Cells[22,i])));
              //if sgM_pkg.Cells[modifyType,i] = 'R' then //修改
              //  SetParamter(tmpSql,'$IPD_FLAG$',qt('R'))
              //else
                SetParamter(tmpSql,'$IPD_FLAG$',qt(''));
              SQLs := TStringList.Create;
              SQLs.Add(tmpSql);
              SQLo.Add(SQLs);
            end;
          end;
        end;

    if (sgFmto_pkg.RowCount > 1) and (Trim(sgFmto_pkg.Cells[3,0])<> '') and (Trim(sgFmto_pkg.Cells[4,0])<> '') then  //處置、衛材、文字
    begin
      for i := 0 to sgFmto_pkg.RowCount-1 do
      begin
        if (TRim(sgFmto_pkg.Cells[3,i])<>'' ) and (Trim(sgFmto_pkg.Cells[4,i])<> '') then
        begin
          {if (sgFmto_pkg.Cells[2,i]='X') or (sgFmto_pkg.Cells[0,i] = 'R') then
          begin //刪除
            tmpSql := sql_str(8);
            SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
            SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
            SetParamter(tmpSql,'$DC_DATE$',Qt(ROCDate(now,'')));
            SetParamter(tmpSql,'$DC_TIME$',Qt(ROCTime(now,'')));
            SetParamter(tmpSql,'$DC_OPER$',Qt(getorderdoc));
            SetParamter(tmpSql,'$SO_FLAG$',qt(trim(sgFmto_pkg.Cells[1,i])));
            SetParamter(tmpSql,'$FEE_CODE$',Qt(trim(sgFmto_pkg.Cells[3,i])));
            SetParamter(tmpSql,'$SEQ_NO$',Qt(trim(sgFmto_pkg.Cells[Seq,i])));
            SQLs := TStringList.Create;
            SQLs.Add(tmpSql);
            SQLo.Add(SQLs);
          end;
          //找舊資料
          DM.QrySubSearch.Close;
          tmpSql:=sql_str(9);
          SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
          SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
          SetParamter(tmpSql,'$SO_FLAG$',Qt(trim(sgFmto_pkg.Cells[1,i])));
          SetParamter(tmpSql,'$FEE_CODE$',Qt(sgFmto_pkg.Cells[F_code,i]));
          SetParamter(tmpSql,'$SEQ_NO$',Qt(trim(sgFmto_pkg.Cells[Seq,i])));
          DM.QrySubSearch.SQL.Text := tmpSql;
          DM.QrySubSearch.Open;
          if not DM.QrySubSearch.IsEmpty then
          begin
            oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
            oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
            STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
            oldlabno := Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
          end
          else
          begin }
            oldseq := '';
            oldsheetno := '';
            STROLDSEQNO := '';
            oldlabno := '';
          //end;
          //DM.QrySubSearch.Close;
          //新增資料
          tmpSql := sql_str(10);
          Inc(all_sheet_no);
          Inc(all_seq_no);
          SetParamter(tmpSql,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));//日期加3碼流水號
          SetParamter(tmpSql,'$SEQ$',qt(IntToStr(all_seq)));//開單次數
          SetParamter(tmpSql,'$ORDER_TEXT$',Qt(' '));
          SetParamter(tmpSql,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));//10000起跳
          SetParamter(tmpSql,'$FEE_NO$',qt(getFeeNo));
          SetParamter(tmpSql,'$ORDER_DATE$',qt(GetEpdDate));
          SetParamter(tmpSql,'$ORDER_TIME$',qt(ROCTimes(Now,'')));
          SetParamter(tmpSql,'$SO_FLAG$',qt(trim(sgFmto_pkg.Cells[1,i])));//M 藥物 P排程 L檢驗 C檢查 X放射 O衛材 F 一般批價項目
          SetParamter(tmpSql,'$FEE_CODE$',qt(trim(sgFmto_pkg.Cells[3,i])));
          SetParamter(tmpSql,'$FEE_NAME$',qt(trim(sgFmto_pkg.Cells[4,i])));
          SetParamter(tmpSql,'$ORDER_DOC$',qt(getorderdoc));
          SetParamter(tmpSql,'$ORDER_TYPE$',Qt(''));//醫囑類型
          SetParamter(tmpSql,'$ORDER_DAYS$','0');//天數
          SetParamter(tmpSql,'$QTY_NUM$',trim(sgFmto_pkg.Cells[6,i]));//數量
          SetParamter(tmpSql,'$UNIT_DESC$',Qt(''));//單位
          SetParamter(tmpSql,'$CIR_CODE$',Qt(''));//頻率
          SetParamter(tmpSql,'$PATH_CODE$',Qt(''));//途徑
          SetParamter(tmpSql,'$SELF_PAY_FLAG$',qt(sgFmto_pkg.Cells[7,i]));//自費狀態
          SetParamter(tmpSql,'$URG_FLAG$',qt('N'));//急作
          {if (sgFmto_pkg.Cells[Del,i]='X')  then
          begin
            SetParamter(tmpSql,'$DC_FLAG$',Qt('Y'));
            SetParamter(tmpSql,'$DEL_FLAG$',qt('Y'));
          end
          else
          begin}
            SetParamter(tmpSql,'$DC_FLAG$',Qt('N'));
            SetParamter(tmpSql,'$DEL_FLAG$',qt('N'));
          //end;
          SetParamter(tmpSql,'$UPD_OPER$',qt(getorderdoc));
          SetParamter(tmpSql,'$UPD_DATE$',qt(ROCDate(Now,'')));
          SetParamter(tmpSql,'$UPD_TIME$',qt(ROCTimeS(Now,'')));
          SetParamter(tmpSql,'$LAB_NO$',Qt(oldlabno));//單號
          SetParamter(tmpSql,'$MEMO_DESC$',Qt(''));//說明
          SetParamter(tmpSql,'$KEYIN_USER$',Qt(''));//KEY IN 人員
          SetParamter(tmpSql,'$PROG_FLAG$',Qt(''));//專案
          SetParamter(tmpSql,'$PRINT_FLAG$',qt('Y')); //是否列印Y:列印 N:無列印
          SetParamter(tmpSql,'$ARRG_FLAG$',Qt(''));//Y:排程項 N:非排程項
          SetParamter(tmpSql,'$Exper_type$',Qt(''));//檢驗組別
          SetParamter(tmpSql,'$Exper_class$',Qt(''));//檢體別
          SetParamter(tmpSql,'$Part_code$',qt('')); //部位
          SetParamter(tmpSql,'$GRIND_FLAG$',Qt(''));//磨粉
          SetParamter(tmpSql,'$PAY_FLAG$',qt(trim(sgFmto_pkg.Cells[7,i])));//自費健保
          SetParamter(tmpSql,'$TTL_QTY$','0');//總量
          //SetParamter(tmpSql'$TRANS_FLAG',qt());//轉檔成功否
          //SetParamter(tmpSql,'$PRINT_FLAG_2',qt());
          SetParamter(tmpSql,'$FEE_UNIT$',Qt(''));//包裝單位
          //SetParamter(tmpSql,'$ORDER_STATUS',qt());
          SetParamter(tmpSql,'$FEE_CODE1$',qt(trim(sgFmto_pkg.Cells[3,i])));
          SetParamter(tmpSql,'$FEE_NO1$',qt(getFeeNo));
          SetParamter(tmpSql,'$ORDER_SEQ$',qt(oldseq));
          SetParamter(tmpSql,'$DC_SHEET_NO$',qt(oldsheetno));
          SetParamter(tmpSql,'$oldSEQ_NO$',qt(STROLDSEQNO));
          SetParamter(tmpSql,'$REPRT_STATUS$',qt('N'));
          SetParamter(tmpSql,'$NUS_OPER$',qt(''));
          SetParamter(tmpSql,'$VS_DOC$',qt(GetVsCode));
          SetParamter(tmpSql,'$JOIN_NO$',qt(''));
          //if sgFmto_pkg.Cells[modifyType,i] = 'R' then //修改
          //  SetParamter(tmpSql,'$IPD_FLAG$',qt('R'))
          //else
            SetParamter(tmpSql,'$IPD_FLAG$',qt(''));
          SQLs := TStringList.Create;
          SQLs.Add(tmpSql);
          SQLo.Add(SQLs);
        end;
      end;
    end;

    for i:=0 to sgclx_pkg.RowCount - 1 do
    begin
      if (Trim(sgclx_pkg.Cells[3,i]) <> '') and ((Trim(sgclx_pkg.Cells[4,i]) <> '')) then
      begin
        tmpSql:='';
        //刪除資料
        {if (tmpSG.Cells[Del,i] = 'X') and (tmpSG.Cells[modifyType,i] = 'R') then
        begin
          SQLs:=TStringList.Create;
          tmpSql:='';
          tmpSql:=sql_str(8);
          SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
          SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
          SetParamter(tmpSql,'$DC_DATE$',Qt(ROCDate(now,'')));
          SetParamter(tmpSql,'$DC_TIME$',Qt(ROCTime(now,'')));
          SetParamter(tmpSql,'$DC_OPER$',Qt(getorderdoc));
          SetParamter(tmpSql,'$SO_FLAG$',Qt(OrderType));
          SetParamter(tmpSql,'$FEE_CODE$',Qt(tmpSG.Cells[C_Code,i]));
          SetParamter(tmpSql,'$SEQ_NO$',Qt(tmpSG.Cells[Seq,i]));
          SQLs.Text:=tmpSql;
          SQLo.Add(SQLs);

          //取舊資料
          DM.QrySubSearch.Close;
          tmpSql:='';
          tmpSql:=sql_str(9);
          SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
          SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
          SetParamter(tmpSql,'$SO_FLAG$',Qt(OrderType));
          SetParamter(tmpSql,'$FEE_CODE$',Qt(tmpSG.Cells[C_Code,i]));
          SetParamter(tmpSql,'$SEQ_NO$',Qt(tmpSG.Cells[Seq,i]));
          DM.QrySubSearch.SQL.Text := tmpSql;
          DM.QrySubSearch.Open;
          if not DM.QrySubSearch.IsEmpty then
          begin
            oldseq := Trim(DM.QrySubSearch.fieldbyname('ORDER_SEQ').AsString);
            oldsheetno := Trim(DM.QrySubSearch.fieldbyname('SHEET_NO').AsString);
            STROLDSEQNO := Trim(DM.QrySubSearch.fieldbyname('SEQ_NO').AsString);
            oldlabno := Trim(DM.QrySubSearch.fieldbyname('lab_no').AsString);
          end
          else
          begin}
            oldseq := '';
            oldsheetno := '';
            STROLDSEQNO := '';
            oldlabno := '';
         // end;
        //end;
        //新增
        Inc(all_sheet_no);
        Inc(all_seq_no);
        SQLs:=TStringList.Create;
        tmpSql:=sql_str(10);
        SetParamter(tmpSql,'$SHEET_NO$',Qt(GetEpdDate+AddChar(IntToStr(all_sheet_no),'0',3)));
        SetParamter(tmpSql,'$SEQ$',qt(IntToStr(all_seq)));
        SetParamter(tmpSql,'$ORDER_TEXT$',Qt(' '));
        SetParamter(tmpSql,'$SEQ_NO$',qt(IntToStr(RECORD_SEQ_no)));
        SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
        SetParamter(tmpSql,'$ORDER_DATE$',Qt(GetEpdDate));
        SetParamter(tmpSql,'$ORDER_TIME$',Qt(ROCTimes(now,'')));
        SetParamter(tmpSql,'$SO_FLAG$',Qt(sgclx_pkg.Cells[1,i]));
        SetParamter(tmpSql,'$FEE_CODE$',Qt(trim(sgclx_pkg.Cells[3,i])));
        SetParamter(tmpSql,'$FEE_NAME$',Qt(trim(sgclx_pkg.Cells[4,i])));
        SetParamter(tmpSql,'$ORDER_DOC$',Qt(getorderdoc));
        SetParamter(tmpSql,'$ORDER_TYPE$',Qt(trim(sgclx_pkg.Cells[14,i])));
        SetParamter(tmpSql,'$ORDER_DAYS$',Qt(''));
        SetParamter(tmpSql,'$QTY_NUM$',Qt(trim(sgclx_pkg.Cells[5,i])));
        SetParamter(tmpSql,'$UNIT_DESC$',Qt(trim(sgclx_pkg.Cells[6,i])));
        SetParamter(tmpSql,'$CIR_CODE$',Qt(trim(sgclx_pkg.Cells[7,i])));
        SetParamter(tmpSql,'$PATH_CODE$',Qt(trim(sgclx_pkg.Cells[8,i])));//存(x:放射部位send_cd_1; L:檢體項目send_cd_2; C:檢查室Send_cd_1)
        SetParamter(tmpSql,'$SELF_PAY_FLAG$',Qt(trim(sgclx_pkg.Cells[9,i])));
        SetParamter(tmpSql,'$URG_FLAG$',Qt(trim(sgclx_pkg.Cells[10,i])));
        {if sgclx_pkg.Cells[Del,i] = 'X' then
        begin
          SetParamter(tmpSql,'$DC_FLAG$',Qt('Y'));
          SetParamter(tmpSql,'$DEL_FLAG$',Qt('Y'));
        end
        else
        begin }
          SetParamter(tmpSql,'$DC_FLAG$',Qt('N'));
          SetParamter(tmpSql,'$DEL_FLAG$',Qt('N'));
        //end;
        SetParamter(tmpSql,'$UPD_OPER$',Qt(getorderdoc));
        SetParamter(tmpSql,'$UPD_DATE$',Qt(ROCDate(now,'')));
        SetParamter(tmpSql,'$UPD_TIME$',Qt(ROCTimes(now,'')));
        SetParamter(tmpSql,'$LAB_NO$',Qt(oldlabno));
        SetParamter(tmpSql,'$MEMO_DESC$',Qt(trim(sgclx_pkg.Cells[11,i])));
        SetParamter(tmpSql,'$PROG_FLAG$',Qt('N'));
        SetParamter(tmpSql,'$PRINT_FLAG$',Qt('Y'));
        //if sgclx_pkg =SGChk then
        //  SetParamter(tmpSql,'$ARRG_FLAG$',Qt('Y'))
        //else
          SetParamter(tmpSql,'$ARRG_FLAG$',Qt('N'));
        SetParamter(tmpSql,'$Exper_type$',Qt(trim(sgclx_pkg.Cells[13,i])));//存(L:檢驗組別Send_cd_1; X:放射Send_cd_2)
        SetParamter(tmpSql,'$Exper_class$',Qt(trim(sgclx_pkg.Cells[13,i])));//存(L:檢驗組別Send_cd_3; X:放射Send_cd_3)
        SetParamter(tmpSql,'$Part_code$',Qt(trim(sgclx_pkg.Cells[13,i])));
        SetParamter(tmpSql,'$GRIND_FLAG$',Qt('N'));
        SetParamter(tmpSql,'$PAY_FLAG$',Qt(sgclx_pkg.Cells[9,i]));
        SetParamter(tmpSql,'$TTL_QTY$',Qt(sgclx_pkg.Cells[5,i]));
        SetParamter(tmpSql,'$FEE_CODE1$',qt(trim(sgclx_pkg.Cells[3,i])));
        SetParamter(tmpSql,'$FEE_NO1$',qt(getFeeNo));
        SetParamter(tmpSql,'$ORDER_SEQ$',Qt(oldseq));
        SetParamter(tmpSql,'$DC_SHEET_NO$',Qt(oldsheetno));
        SetParamter(tmpSql,'$oldSEQ_NO$',qt(STROLDSEQNO));
        SetParamter(tmpSql,'$FEE_UNIT$',qt(''));
        SetParamter(tmpSql,'$REPRT_STATUS$',qt('N'));
        SetParamter(tmpSql,'$NUS_OPER$',qt(''));
        SetParamter(tmpSql,'$VS_DOC$',qt(GetVsCode));
        SetParamter(tmpSql,'$JOIN_NO$',qt(''));
        //if sgclx_pkg.Cells[modifyType,i] = 'R' then //修改
        //  SetParamter(tmpSql,'$IPD_FLAG$',qt('R'))
        //else
          SetParamter(tmpSql,'$IPD_FLAG$',qt(''));
        SQLs.Text:=tmpSql;
        SQLo.Add(SQLs);
      end;
    end;//for i

    tmpSql:=sql_str(17);
    SetParamter(tmpSql,'$OPD_STATUS$',Qt('0'));
    //SetParamter(tmpSql,'$opd_date$',Qt(GetEpdDate));
    SetParamter(tmpSql,'$FEE_NO$',Qt(getFeeNo));
    SQLs:=TStringList.Create;
    SQLs.Text:=tmpSql;
    SQLo.Add(SQLs);

    if not DM.ExecSQL(SQLo) then
    begin
      Result := False;
    end;
    FreeAndNil(SQLo);
  except
    on E: Exception do
    BEGIN
      sql_time_log('寫入資料庫失敗',E.Message );
      Result:=false;
      FreeAndNil(SQLo);
    end;
  end;
end;
end.
