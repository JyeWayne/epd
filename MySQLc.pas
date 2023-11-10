unit MySQLc;

interface

uses Classes, SysUtils;
  function getPatList(seq : integer): String;
  function getMAJOR_sql(seq : integer): string;
  function getlog_sql(seq: integer): string;
  function SetParamter(var Source:String; Paramter:String;Values : String):Boolean;
  function getPreOrderSql(s_no:integer):string;
  function getSpSql(SpNo:Integer;var Paramter,PType,RType:TStrings):string;
  function sql_str(seq : integer): String;
  function getordergrp(s_no: integer):string;
  FUNCTION GETEPDRECORD(SEQ : INTEGER):STRING;
  function phrase(seq: integer):string;
  function nurse(seq: integer):string;
  function nurse_eisai(seq : integer): String;
  function report(seq: integer):string;
  function getDitto(s_no :integer):string;
  function getareabed(s_no :integer):string;
  function statusSQL(KIND,PARAMT:STRING):String;
  Function changedoc(s_no :integer):string;
  Function Trfnte(s_no :integer):string;
  FUNCTION othe_HIS(s_no :integer):string;
  Procedure statusinlist;
  FUNCTION docshift(s_no :integer):string;
  function Lv_dg(seq: integer):string;
  FUNCTION getChkSqlStr(s_no :integer):string;
  function firstsql_str(seq : integer): String;
  function MedDC(s_no :integer):string;
  function sqlstr(seq :integer):string;//icd10
  function preliminaryrept(seq :integer):string;

var
  qstr,patlissql,epd_date,TRIAGETABLENAME,shiftQuery,IPDBEDCHK,qorderstr, HRRStr : string; //20121114

implementation

uses Commfunc, Global, ERsFunc;


function preliminaryrept(seq :integer):string;
begin
  case seq of
    0:
      Result := 'insert into epd_preliminary( OPD_DATE,FEE_NO,CODE_NO,ITEM_NO,SEQ_NO,'+
                'FEE_CODE1,FEE_CODE2,FEE_CODE3,FEE_CODE4,FEE_CODE5,FEE_CODE6,FEE_CODE7,FEE_CODE8,FEE_CODE9,FEE_CODE10,FEE_CODE11,FEE_CODE12,'+
                'CHR_NO,DOC_CODE,LAB_NO,REPORT_DESC,UPD_OPER,UPD_DATE,UPD_TIME,REPORTDATE,REPORTTIME,CHECKITEM,PRINT_TIMES,CNCL_FLAG) '+
                'values($OPD_DATE$,$FEE_NO$,$CODE_NO$,$ITEM_NO$,$SEQ_NO$,'+
                '$FEE_CODE1$,$FEE_CODE2$,$FEE_CODE3$,$FEE_CODE4$,$FEE_CODE5$,$FEE_CODE6$,$FEE_CODE7$,$FEE_CODE8$,$FEE_CODE9$,$FEE_CODE10$,$FEE_CODE11$,$FEE_CODE12$,'+
                '$CHR_NO$,$DOC_CODE$,$LAB_NO$,$REPORT_DESC$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$REPORTDATE$,$REPORTTIME$,$CHECKITEM$,$PRINT_TIMES$,$CNCL_FLAG$)';
     { select opd_date,(select item_name from x_ray a where a.item_no=opd_xray.item_no)as name,decode(trim(fee_code1),'''',fee_code2,fee_code1) as fee_code,code_no,item_no,seq_no,doc_code '+
                'from opd_xray where opd_date=$OPD_DATE$ and fee_no =$FEE_NO$';
     }
    1:
      Result := 'select '''' as "選",a.order_date,decode((select B.FEE_NAME from ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE  AND Trim(B.order_type) '+
                'IN (''X'',''X1'',''X2'',''X3'',''X4'') and substr(a.item_no,2,4)=b.SEND_CD_2),'''',(select fee_desc from fee_basic where fee_basic.FEE_CODE = a.FEE_CODE),'+
                '(select B.FEE_NAME from ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE  AND Trim(B.order_type) IN (''X'',''X1'',''X2'',''X3'',''X4'') and substr(a.item_no,2,4)=b.SEND_CD_2)) as name,'+
                'a.fee_code,trim(a.exper_class) as exper_class,trim(exper_type) as item_no,order_seq as seq_no,order_doc as doc_code from epd_all_order a '+                    // and opd_date=$OPD_DATE$
                'where (a.order_type in(''X'',''X1'',''X2'',''X3'',''X4'') or (a.so_flag = ''F'' and fee_code in($FEECODE$)))  and fee_no =$FEE_NO$ and dc_flag=''N'' and order_date=$OPD_DATE$';
    2:                                                                                                                               // ''F19001C02'',''F19005CER''
      Result := 'select * from epd_preliminary where fee_no=$FEE_NO$ and item_no=$ITEM_NO$';
    3:
      Result := 'select nvl(max(seq_no),''0'') seqno from epd_preliminary where fee_no=$FEE_NO$';
    4:
      Result := 'select SEQ_NO as "No",OPD_DATE as "Date",(select doc_name from doc_basic where doc_code=a.doc_code)as name,FEE_NO,doc_code,ITEM_NO,REPORT_DESC,REPORTDATE,REPORTTIME,CHECKITEM,PRINT_TIMES,cncl_flag '+
                'from epd_preliminary a where a.chr_no=$CHR_NO$ order by upd_date||upd_time desc';
    5:
      Result := 'update epd_preliminary set print_times = print_times+1 where fee_no=$FEE_NO$ and doc_code=$DOC_CODE$ and seq_no=$SEQ_NO$ ';
    6:
      Result := 'update epd_preliminary set cncl_flag = ''Y'' where fee_no=$FEE_NO$ and seq_no=$SEQ_NO$';

  end;
end;

function sqlstr(seq :integer):string;
begin
  case seq of
    0:
      Result := 'SELECT ICD_CODE as ICD9_CODE,CHN_FULL_DESC,ENG_FULL_DESC,CHN_SIMP_DESC,ENG_SIMP_DESC,slow_flag,first_flag,inf_flag,'''' as icd9toicd10,'''' as choose_flag '+
                'from ICD_CODE_BASIC '+
                'WHERE  ';
    1:
      Result := 'select b.ICD_CODE as ICD9_CODE,b.CHN_FULL_DESC ,b.ENG_FULL_DESC,b.CHN_SIMP_DESC,b.ENG_SIMP_DESC,b.slow_flag,b.first_flag,b.inf_flag,'+
                'a.icd9_code as icd9toicd10,'''' as choose_flag from icd9_trans_icd10 a, icd_code_basic b '+
                'where trim(a.icd_code) = b.icd_code and a.icd9_code = $IDC9_CODE$ and b.icd_system = ''C'' and b.eff_flag=''Y'' $DEPT_CODE$';
    11: //判斷科別是否有資料
      Result := 'SELECT count(*) ROWCT from icd9_trans_icd10 WHERE icd9_code = $IDC9_CODE$ and dept_code=$DEPT_CODE$ ';
    2:  //寫入ICD10
      Result := 'insert into ORDER_ICD_CODE(order_kind,order_type,fee_no,seq_no,icd_code,icd_system,upd_oper,upd_date,upd_time,icd_trans_code,opd_date)'+
                'values($ORDER_KIND$,$ORDER_TYPE$,$FEE_NO$,$SEQ_NO$,$ICD_CODE$,$ICD_SYSTEM$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$ICD_TRANS_CODE$,$OPD_DATE$)';
    3:  //取ICD10記錄
      Result := 'SELECT a.ICD_CODE as ICD9_CODE,b.ENG_FULL_DESC,b.CHN_FULL_DESC,b.CHN_SIMP_DESC,b.ENG_SIMP_DESC,b.slow_flag,b.first_flag,a.icd_trans_code as icd9toicd10,'''' as choose_flag '+
                'from order_icd_code a left join icd_code_basic b on a.icd_code=b.icd_code '+
                'where fee_no=$FEE_NO$ and b.eff_flag=''Y'' and opd_date=$OPD_DATE$ $ORDER_TYPE$';
    31:  //取delete記錄
      Result := 'delete from ORDER_ICD_CODE where fee_no=$FEE_NO$ and $OPD_DATE$';
    32:  //取ICD10醫師常用
      Result := 'SELECT a.ICD_CODE ,ENG_FULL_DESC,CHN_FULL_DESC,CHN_SIMP_DESC,ENG_SIMP_DESC,slow_flag,first_flag,b.icd9_code ,'''' as choose_flag,sex_type,INF_FLAG,AGE_TYPE,RARE_FLAG '+
                'from icd_dept_doc_basic b left join ICD_CODE_BASIC a on b.icd_code=a.icd_code and a.eff_flag=''Y'' where b.doc_code=$DOC_CODE$  order by 1';//and b.sour_type=''O''
    33:  //取ICD10科常用
      Result := 'SELECT a.ICD_CODE,ENG_FULL_DESC,CHN_FULL_DESC,CHN_SIMP_DESC,ENG_SIMP_DESC,slow_flag,first_flag,b.icd9_code ,'''' as choose_flag,sex_type,INF_FLAG,AGE_TYPE,RARE_FLAG '+
                'from icd_dept_basic b left join ICD_CODE_BASIC a on b.icd_code=a.icd_code and a.eff_flag=''Y'' where b.dept_code =$DEPT_CODE$  order by 1'; //and b.sour_type=''O''
    34:
      Result := 'select b.ICD_CODE as ICD9_CODE,b.CHN_FULL_DESC,b.ENG_FULL_DESC,b.CHN_SIMP_DESC,b.ENG_SIMP_DESC,b.slow_flag,b.first_flag,b.inf_flag,a.icd9_code as icd9toicd10,'''' as choose_flag '+
                'from icd_code_basic b left join icd9_trans_icd10 a on trim(a.icd_code) = b.icd_code '+
                'where b.icd_code =$IDC_CODE$ and b.eff_flag=''Y''';
    35: //icd10快速搜尋
      Result := 'select a.icd_group1||a.chn_name1||a.eng_name1 AS ALLA,a.icd_group1 as icd_group,a.chn_name1,a.eng_name1 as eng_name from icd10_search_basic a group by a.icd_group1,a.chn_name1,a.eng_name1 order by a.icd_group1';
    36:                                                                                                             //'P'
      Result := 'select a.icd_group2||a.chn_name2||a.eng_name2 AS ALLA,a.icd_group2 as icd_group,a.chn_name2,a.eng_name2 as eng_name,a.icd_q1 from icd10_search_basic a '+
                'where a.icd_group1 =$ICD_GROUP$  group by a.icd_group2,a.chn_name2,a.eng_name2,a.icd_q1 order by a.icd_group2';
    37:                                                                                                             //'P09'  ,a.ok_no
      Result := 'select a.icd_group3||a.chn_name3||a.eng_name3 AS ALLA,a.icd_group3 as icd_group,a.chn_name3,a.eng_name3 as eng_name,a.icd_q2 from icd10_search_basic a '+
                'where a.icd_group2 =$ICD_GROUP$  group by a.icd_group3,a.chn_name3,a.eng_name3,a.icd_q2 order by a.icd_group3';
    38:                                                                                                             //'X1' ,a.ok_no
      Result := 'select a.icd_group4||a.chn_name4||a.eng_name4 AS ALLA,a.icd_group4 as icd_group,a.chn_name4,a.eng_name4 as eng_name,a.icd_q3 from icd10_search_basic a '+
                'where a.icd_group3 =$ICD_GROUP$  group by a.icd_group4,a.chn_name4,a.eng_name4,a.icd_q3 order by a.icd_group4';
    39:                                                                                                             //'X10'  ,a.ok_no
      Result := 'select a.icd_group5||a.chn_name5||a.eng_name5 AS ALLA,a.icd_group5 as icd_group,a.chn_name5,a.eng_name5 as eng_name,a.icd_q4 from icd10_search_basic a '+
                'where a.icd_group4 =$ICD_GROUP$  group by a.icd_group5,a.chn_name5,a.eng_name5,a.icd_q4 order by a.icd_group5';
    40:                                                                                                             //'X101' ,a.ok_no
      Result := 'select a.icd_group6||a.chn_name6||a.eng_name6 AS ALLA,a.icd_group6 as icd_group,a.chn_name6,a.eng_name6 as eng_name,a.icd_q5 from icd10_search_basic a '+
                'where a.icd_group5 =$ICD_GROUP$  group by a.icd_group6,a.chn_name6,a.eng_name6,a.icd_q5 order by a.icd_group6';
    41:                                                                                                             //'X101XXA'  ,a.ok_no
      Result := 'select a.icd_group7||a.chn_name7||a.eng_name7 AS ALLA,a.icd_group7 as icd_group,a.chn_name7,a.eng_name7 as eng_name,a.icd_q6 from icd10_search_basic a '+
                'where a.icd_group6 =$ICD_GROUP$  group by a.icd_group7,a.chn_name7,a.eng_name7,a.icd_q6 order by a.icd_group7';
    42:                                                                                                             //'W3181'  ,a.ok_no
      Result := 'select a.icd_group8||a.chn_name8||a.eng_name8 AS ALLA,a.icd_group8 as icd_group,a.chn_name8,a.eng_name8 as eng_name,a.icd_q7 from icd10_search_basic a '+
                'where a.icd_group7 =$ICD_GROUP$  group by a.icd_group8,a.chn_name8,a.eng_name8,a.icd_q7 order by a.icd_group8';
    43:                                                                                                             //'W34010'
      Result := 'select a.icd_group9||a.chn_name9||a.eng_name9 AS ALLA,a.icd_group9 as icd_group,a.chn_name9,a.eng_name9 as eng_name from icd10_search_basic a where a.icd_group8 = $ICD_GROUP$  group by a.icd_group9,a.chn_name9,a.eng_name9 order by a.icd_group9';
  end;
end;

function firstsql_str(seq : integer): String;
begin
  case seq of
    0:
      Result := 'select distinct chr_no,icd9_code1,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = opd_basic.icd9_code1) as dd from opd_basic '+
                ' where (icd9_code1 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or icd9_code1 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,icd9_code2,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = opd_basic.icd9_code2) as dd from opd_basic '+
                ' where (icd9_code2 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or icd9_code2 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,icd9_code3,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = opd_basic.icd9_code3) as dd from opd_basic '+
                ' where (icd9_code3 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or icd9_code3 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,icd9_code4,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = opd_basic.icd9_code4) as dd from opd_basic '+
                ' where (icd9_code4 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or icd9_code4 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,mdiag_code,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.mdiag_code) as dd from ipd_basic '+
                ' where (mdiag_code in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or mdiag_code between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,sdiag_code1,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.sdiag_code1) as dd from ipd_basic '+
                ' where (sdiag_code1 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or sdiag_code1 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,sdiag_code2,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.sdiag_code2) as dd from ipd_basic '+
                ' where (sdiag_code2 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or sdiag_code2 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,sdiag_code3,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.sdiag_code3) as dd from ipd_basic '+
                ' where (sdiag_code3 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or sdiag_code3 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,sdiag_code4,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.sdiag_code4) as dd from ipd_basic '+
                ' where (sdiag_code4 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or sdiag_code4 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,sdiag_code5,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.sdiag_code5) as dd from ipd_basic '+
                ' where (sdiag_code5 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or sdiag_code5 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,sdiag_code6,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.sdiag_code6) as dd from ipd_basic '+
                ' where (sdiag_code6 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or sdiag_code6 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$ '+
                'union '+
                'select distinct chr_no,sdiag_code7,(select trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code = ipd_basic.sdiag_code7) as dd from ipd_basic '+
                ' where (sdiag_code7 in(''401'',''250'',''295'',''436'',''438'',''414'',''434'',''585'',''431'',''430'',''496'',''493'') or sdiag_code7 between ''140'' and ''199.9'') '+
                '   and chr_no=$CHR_NO$' ;

  end;
end;


FUNCTION getChkSqlStr(s_no :integer):string;
begin
  case s_no of
    0:
      Result := 'select * from oper_basic where oper_id=$DOC_CODE$ and pswd_desc=$PSWD_DESC$';
    1:
      //111.01.07 shh ITe 11138 modify 雙和新密碼認證機制
      //Result := 'update oper_basic set pswd_desc=$PSW_DESC$, upd_oper=$UPD_OPER$, upd_date=$UPD_DATE$, upd_time=$UPD_TIME$ where oper_id=$DOC_CODE$ and pswd_desc=$OLDPSW_DESC$';
      Result := 'select f_use_pwd(''U'',$UPD_OPER$,$PSW_DESC$) chk from DUAL';
    2:
      Result := 'select months_between(sysdate,to_date(max(upd_date)+19110000,''YYYYMMDD'')) aa,fee_no from bio_information_log where chr_no = $CHR_NO$ and (trim(body_weight) is not null or NA_flag=''B'') group by fee_no';
    3:
      Result := 'select f_use_pwd(''L'',$UPD_OPER$,$PSW_DESC$) chk from DUAL';
  end;
end;



FUNCTION docshift(s_no :integer):string;
begin
  case s_no of
    0:
      Result := '(select ''V'' as "sele",(select sex_type from chr_basic c where c.chr_no=b.chr_no)as sex,c.class_no,(select bed_no from BED_AREA where fee_no = a.fee_no and rownum = 1) as epd_bed, '+
                'b.chr_no,b.pat_name,(select birth_date from chr_basic c where c.chr_no=b.chr_no)as age,(select ac_type from chr_basic where chr_basic.chr_no=b.chr_no)as ac_type,'+
                '(select opd_date||''_''||rsv_opd_time from reg_basic c where c.opd_date=b.opd_date and c.fee_no=b.fee_no) as epd_date, '+
                'decode(trim(d.ediag_desc),'''',(select trim(chn_simp_desc) from icd9_basic where icd9_code=b.icd9_code1),trim(d.ediag_desc)) as icd9,''查詢'',''查詢'',d.class_shift,b.fee_no,d.ps  '+
                'from opd_basic b,reg_basic a ,epd_his c, doc_er_shift d '+                                                                                           
                'where a.opd_date=$OPD_DATE$ and a.OPD_KIND=''E'' and a.cncl_flag=''N'' and b.fee_no=d.fee_no(+) '+
                'and a.opd_date=b.opd_date and a.fee_no=b.fee_no and a.fee_no=$FEE_NO$'+
                'and a.fee_no=c.fee_no and ((a.opd_status in(''0'',''1'',''2'')) or '+
                '(a.opd_status in(''5'',''4'') and  c.end_date=''9999999'')))' ;

    1:
      Result := 'select ''V'' as "sele",(select sex_type from chr_basic c where c.chr_no=b.chr_no)as sex,'+
                'b.triage_level,(select bed_no from bed_aera where fee_no = a.fee_no) as  b.epd_bed,b.chr_no,b.pat_name,(select birth_date from chr_basic c where c.chr_no=b.chr_no)as age,'+
                '(select opd_date||''_''||rsv_opd_time from reg_basic c where c.opd_date=b.opd_date and c.fee_no=b.fee_no) as epd_date,'+
                'trim(b.icd9_code1)||trim(b.icd9_desc1) as icd9,'''','''','''',b.fee_no '+
                'from opd_basic1 b,reg_basic a where a.OPD_KIND=''E'' and a.cncl_flag=''N'' and a.opd_date=b.opd_date and a.fee_no=b.fee_no '+qstr+' order by a.seq_no';
    2:
      Result := 'insert into DOC_ER_SHIFT(BED_NO,CHR_NO,PAT_NAME,EDIAG_DESC,CLASS_SHIFT,UPD_ID,UPD_DATA,UPD_TIME,PRINT_FLAG,FEE_NO,ORIGINAL_DATA,PS)'+
                ' values($BED_NO$,$CHR_NO$,$PAT_NAME$,$EDIAG_DESC$,$CLASS_SHIFT$,$UPD_ID$,$UPD_DATA$,$UPD_TIME$,$PRINT_FLAG$,$FEE_NO$,$ORIGINAL_DATA$,$PS$)';
    3:
      Result := 'update DOC_ER_SHIFT set BED_NO=$BED_NO$,EDIAG_DESC=$EDIAG_DESC$,CLASS_SHIFT=$CLASS_SHIFT$,UPD_ID=$UPD_ID$,UPD_DATA=$UPD_DATA$,UPD_TIME=$UPD_TIME$,PRINT_FLAG=$PRINT_FLAG$,PS=$PS$'+
                ' where fee_no=$FEE_NO$ AND UPD_DATA >= $UPD_DATA_180$';
    4:
      Result := 'select * from DOC_ER_SHIFT where fee_no=$FEE_NO$ AND UPD_DATA >=$UPD_DATA$';
    5:
      Result := 'insert into DOC_ER_SHIFT_PRINT(BED_NO,CHR_NO,PAT_NAME,EDIAG_DESC,CLASS_SHIFT,UPD_ID,UPD_DATA,UPD_TIME,FEE_NO,ORIGINAL_DATA,PRINT_ID,PRINT_DATE,PRINT_TIME)'+
                ' values($BED_NO$,$CHR_NO$,$PAT_NAME$,$EDIAG_DESC$,$CLASS_SHIFT$,$UPD_ID$,$UPD_DATA$,$UPD_TIME$,$FEE_NO$,$ORIGINAL_DATA$,$PRINT_ID$,$PRINT_DATE$,$PRINT_TIME$)';
    6:
      Result := 'select bed_no,chr_no,pat_name,ediag_desc,class_shift,upd_id,print_id,(select triage_level from opd_basic1 where opd_basic1.fee_no=doc_er_shift_print.fee_no) as triage_level,'+
                '(select decode(sex_type,''1'',''M'',''F'') from chr_basic where chr_basic.chr_no=doc_er_shift_print.chr_no) as sex,'+
                '(select trim(birth_date) from chr_basic where chr_basic.chr_no=doc_er_shift_print.chr_no) as birth_date,'+
                '(select ac_type from chr_basic where chr_basic.chr_no=doc_er_shift_print.chr_no) as ac_type,'+
                '(SELECT ''Y'' FROM BESP_IPD where BESP_IPD.Fee_No=DOC_ER_SHIFT_PRINT.Fee_No)as bespipd,'+
                '(select smpl_desc from dept_basic where dept_basic.dept_code in '+
                '(SELECT gen_dept_code FROM IPD_RSV  where sour_type=''E'' and IPD_RSV.chr_no=doc_er_shift_print.chr_no)) as bespdept '+
                'from DOC_ER_SHIFT_PRINT where UPD_ID=$PRINT_ID$ and UPD_DATA=$PRINT_DATE$ and upd_TIME=$PRINT_TIME$ ORDER BY 1';
    7:
      Result := 'update doc_er_shift_print set PRINT_ID=$PRINT_ID$,PRINT_DATE=$PRINT_DATE$,PRINT_TIME=$PRINT_TIME$ '+
                'where UPD_ID=$UPD_ID$ and UPD_DATA=$UPD_DATA$ and UPD_TIME=$UPD_TIME$';
    8:
      Result := 'update doc_er_shift set PRINT_FLAG=''Y'' where UPD_ID=$UPD_ID$ and UPD_DATA=$UPD_DATA$ and UPD_TIME=$UPD_TIME$';
    9:
      Result := 'select distinct upd_data as "日期",(select doc_name from doc_basic where TRIM(doc_basic.doc_code)=trim(doc_er_shift_print.upd_id)) as "醫師",'+
                '''列印'' as "列印",upd_time as "時間",upd_id from DOC_ER_SHIFT_PRINT  ORDER BY UPD_DATA||upd_time DESC';

   10:
      Result := 'select ''V'' as "sele",(select sex_type from chr_basic c where c.chr_no=b.chr_no)as sex,c.class_no,(select bed_no from BED_AREA where fee_no = a.fee_no and rownum = 1) as epd_bed, '+
                'b.chr_no,b.pat_name,(select birth_date from chr_basic c where c.chr_no=b.chr_no)as age,(select ac_type from chr_basic where chr_basic.chr_no=b.chr_no)as ac_type, '+
                '(select opd_date||''_''||rsv_opd_time from reg_basic c where c.opd_date=b.opd_date and c.fee_no=b.fee_no) as epd_date, '+
                //110.01.06 shh ITe Modify 修正ICD9改抓ICD10
                //'decode(trim(d.ediag_desc),'''',(select trim(chn_simp_desc) from icd9_basic where icd9_code=b.icd9_code1),trim(d.ediag_desc)) as icd9,''查詢'',''查詢'',d.class_shift,b.fee_no,d.ps '+
                'decode(trim(d.ediag_desc),'''',(select trim(chn_simp_desc) from icd_code_basic where icd_code=b.icd10_code1),trim(d.ediag_desc)) as icd9,''查詢'',''查詢'',d.class_shift,b.fee_no,d.ps '+
                ' from opd_basic b '+
                ' join reg_basic a on a.opd_date= b.opd_date and a.fee_no=b.fee_no and a.cncl_flag=''N'''+
                ' join epd_his c on c.fee_no=b.fee_no and (c.epd_status= ''0'' or (nvl(trim(c.epd_status),''A'')=''A'' and c.reg_date>$NOWDATE$)) and c.end_date=''9999999'''+
                ' $DOCSEQ$'+
                ' left join doc_er_shift d on d.fee_no=b.fee_no '+
                'where  b.OPD_KIND = ''E'' $ADDSQL$ order by epd_bed,epd_date';

   11:
      Result :='Update OPD_BASIC set hia_doc=$INS_DOC$ Where fee_no=$FEE_NO$ and opd_date=$OPD_DATE$';
   12:
      Result :='Update OPD_BASIC1 set ins_doc=$INS_DOC$ Where fee_no=$FEE_NO$ and opd_date=$OPD_DATE$';
  end;

end;

Function othe_HIS(s_no :integer):string;
Begin
  Case s_no of
    0:
      Result :='select * from epd_his where $expression$';
    1: //急診紀錄
      Result :='update epd_his set $expression$ where fee_no=$FEE_NO$ and epd_date=$EPDDATE$';
    2:
      Result :='update opd_basic set $expression$ where opd_date=$OPD_DATE$ and fee_no=$FEE_NO$';
    3: //返診原因
      Result :='insert into EPDEXITBK_LOG(SEQ_NO,OPD_DATE,OPD_TIME,FEE_NO,CHR_NO,PAT_NAME,DOC_CODE,TYPE_D,TYPE_M,OLD_DATE,OLD_TIME,OLD_FEENO,'+
                                   'EXIT_DATE,EXIT_TIME,CARE_REASON,LOG_OPER,LOG_DATE,LOG_TIME,CARE)'+
                            'values($SEQ_NO$,$OPD_DATE$,$OPD_TIME$,$FEE_NO$,$CHR_NO$,$PAT_NAME$,$DOC_CODE$,$TYPE_D$,$TYPE_M$,$OLD_DATE$,$OLD_TIME$,$OLD_FEENO$,'+
                                   '$EXIT_DATE$,$EXIT_TIME$,$CARE_REASON$,$LOG_OPER$,$LOG_DATE$,$LOG_TIME$,$CARE$)';
    4:
      Result := 'Update EPDEXITBK_LOG set $expression$';
    5://icd9 第三個以後
      Result :='delete sdiag_detail where fee_no=$FEE_NO$';
    6:
      Result :='Insert Into sdiag_detail(opd_date,fee_no,chr_no,sdiag_code,upd_oper,upd_date,upd_time,chn_simp_desc) '+
               'Values($OPD_DATE$,$FEE_NO$,$CHR_NO$,$SDIAG_CODE$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$CHN_SIMP_DESC$)';
    7://sohp 每一次儲存的紀錄
      Result :='select * from epd_sheet where fee_no=$FEE_NO$';
    8:
      Result :='Insert Into epd_sheet(fee_no,sheet_no,fee_date,fee_time,s,o,a,p,upd_date,upd_oper,upd_time,vs_doc_code,med_no) '+
               'Values($FEE_NO$,$SHEET_NO$,$FEE_DATE$,$FEE_TIME$,$S$,$O$,$A$,$P$,$UPD_DATE$,$UPD_OPER$,$UPD_TIME$,$VS_DOC_CODE$,$MED_NO$)';
    9:   //opd_med insert
      Result :='Insert Into opd_med($cols$)'+
               ' Values($OPD_DATE$,$FEE_NO$,$SEQ_NO$,$MED_CODE$,$CHR_NO$,$FEE_KIND$,$FEE_TYPE$,$DOC_CODE$,$UNIT_QTY$,$PER_QTY$,'+
               '$UNIT_TYPE$,$UNIT_PACKS$,$CIR_CODE$,$MED_DAYS$,$PATH_CODE$,$VACC_CNT$,$INJECT_FLAG$,$GRIND_FLAG$,$DEL_FLAG$,'+
               '$UNIT_DESC$,$FEE_UNIT_DESC$,$PACK_AMT$,$DISC_RATE$,$INS_PAY_UAMT$,$SELF_PAY_UAMT$,$PART_UAMT$,$INJ_NO$,$MORE_DAYS$,'+
               '$SELF_PAY_FLAG$,$TTL_QTY$,$TTL_MORE_QTY$,$FINAL_FLAG$,$TTL_RTN_QTY$,$STOCK_DEPT_CODE$,$DEPT_CODE$,$RTN_DATE$,$RTN_TIME$,'+
               '$MED_TYPE$,$MED_NO$,$PROG_FLAG$,$HIA_REP_ID$,$PRINT_FLAG$,$ORDER_FLAG$,$MED_FLAG$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$CONF_DATE$,'+
               '$CHEMO_SERIAL$,$CON_FLAG$,$SHEET_NO$,$PRINT_FLAG2$,$MED_CMD$,$ORI_SEQ_NO$,$MED_OP_CHECK$)';
    10:   //update
      Result := '';
    11:   //delete
      Result :='';
    12:   //opd_fee insert
      Result := 'Insert Into OPD_FEE($cols$)'+
                ' Values(OPD_DATE,FEE_NO,SEQ_NO,FEE_CODE,FEE_KIND,FEE_TYPE,DOC_CODE,UNIT_DESC,QTY_NUM,QTY_NUM2,URG_FLAG,ARRG_FLAG,LAB_NO,DEL_FLAG,'+
                'FEE_SEQ_NO,MED_SEQ_NO,MORE_SEQ_NO,DISC_RATE,PAY_RATE,INS_PAY_UAMT,SELF_PAY_UAMT,PART_UAMT,SELF_PAY_FLAG,HCT_VALUE,POSITION,PROG_FLAG,'+
                'HIA_REP_ID,CONF_DATE,EXE_DOC,RHB_FLAG,STOCK_DEPT_CODE,UPD_OPER,UPD_DATE,UPD_TIME,SELF_RATE,EXE_DOC2,ITEM_NO,PART_FLAG,SHEET_NO,PRINT_FLAG)';
    13:   //update
      Result := '';
    14:   //delete
      Result :='';
    15:   //opd_his insert
      Result := 'Insert Into OPD_HIS($cols$)'+
                ' Values(OPD_DATE,FEE_NO,OPER_DATE,OPER_TIME,SEQ_NO,FEE_CODE,DC_TYPE,FEE_DATE,FEE_TIME,FEE_TYPE,QTY_NUM,PAY_FLAG,OPER_ID,INS_PAY_AMT,'+
                'SELF_PAY_AMT,PART_AMT,SELF_PAY_DISC,PART_DISC,RECP_NO,DOC_CODE,CNCL_FLAG,FEE_KIND,INS_FLAG,UPD_OPER,UPD_DATE,UPD_TIME,PART_FLAG,IC_FLAG,'+
                'CONF_DATE,POSITION,MED_DAYS,PER_QTY,CIR_CODE,PATH_CODE,SELF_PAY_FLAG,DIAGNOSEDATE,ORDER_FLAG,SHEET_NO,PRINT_FLAG,ORDER_SIGN)';
    16:   //update
      Result := '';
    17:   //delete
      Result :='';
    18:   //med_case_list insert
      Result := 'Insert Into MED_CASE_LIST($cols$)'+
                ' Values(CHR_NO,MED_CODE,OK_DATE,CASE_FLAG,FAST_FLAG,ORDER_DATE,DOC_CODE,BEGIN_DATE,END_DATE,TTL_QTY,UPD_OPER,UPD_DATE,UPD_TIME,INS_FLAG,'+
                'CURR_QTY,OK_FLAG,FEE_NO,APPLY_KIND,MED_NAME,APPLY_REASON,DRUG1,OUTCOME1,DRUG2,OUTCOME2,DRUG3,OUTCOME3,BETTER_REASOM,BRAND,MED_UNIT,DAY_AMT,'+
                'OK_REASON,CURR_QTY_BK)';
    19:   //update
      Result := '';
    20:   //delete
      Result :='';
    21:   //opd_exper insert
      Result := 'Insert Into OPD_EXPER($cols$)'+
                ' Values(OPD_DATE,FEE_NO,CODE_NO,ITEM_NO,SEQ_NO,CHR_NO,DOC_CODE,LAB_NO,DEL_FLAG,CONF_FLAG,CONF_DATE,REP_DATE,REPORT,PRN_FLAG,URG_FLAG,SEQ_NO2,'+
                'OPEN_FLAG,EXPER_KIND,EXPER_NO,TUBE_NO,TUBE_CODE,MACHINE_FLAG,REPORT_FLAG,EXPER_PAGE,UPD_OPER,UPD_DATE,UPD_TIME,SELF_PAY_FLAG,SPEC_DATE,'+
                'SPEC_TIME,CLOSE_DATE)';
    22:   //update
      Result := '';
    23:   //delete
      Result :='';
    24:   //lab_sche insert
      Result := 'Insert Into LAB_SCHE($cols$)'+
                ' Values(SCHE_NO,ARRG_DATE,FEE_NO,FEE_CODE,DOC_CODE,ROOM_NO,CHR_NO,PAT_NAME,SOUR_TYPE,START_TIME,MED_FLAG,X_CT,EPU_WAY,OPD_DATE,DEPT_CODE,'+
                'PAT_ID,PRN_FLAG,CONF_FLAG,ICD9_CODE1,ICD9_CODE2,ICD9_CODE3,SET_TIME,BLOOD,EMG_FLAG,F2_FLAG,DEL_FLAG,UPD_OPER,UPD_DATE,UPD_TIME,SEQ_NO,'+
                'SEQ_NO2,OP_NO,KIND_NO,CODE_NO,ITEM_NO,FEE_NO1,F_R_FLAG,SCH_FLAG,TRANS_NO,ID_NO,EXE_DOC,SELF_PAY_FLAG,SCR_KIND,DR_NOTE,CLOSE_DATE,'+
                'ABSENT,SHEET_DATE,APPOINT,START_TIME2,PAIN_FLAG)';
    25:   //update
      Result := '';
    26:   //delete
      Result :='';
    27:   //opd_xray insert
      Result := 'Insert Into OPD_XRAY($cols$)'+
                ' Values(OPD_DATE,FEE_NO,KIND_NO,CODE_NO,ITEM_NO,SEQ_NO,FEE_CODE1,FEE_CODE2,QTY_NUM,CHR_NO,DOC_CODE,LAB_NO,DEL_FLAG,CONF_FLAG,PRN_FLAG,'+
                'UPD_OPER,UPD_DATE,UPD_TIME,SEQ_NO2,OPEN_FLAG,EXE_DOC,XRAY_NO,PAT_ID,DEPT_CODE,ICD9_CODE1,ICD9_CODE2,ICD9_CODE3,TRANS_NO,SELF_PAY_FLAG,'+
                'SCR_KIND,DR_NOTE,CLOSE_DATE)';
    28:   //update
      Result := '';
    29:   //delete
      Result :='';
  End;
End;

Function Trfnte(s_no :integer):string;
begin
  case s_no of
    0:
      Result :='select * from BED_TRANSFER_NOTE';
    1:
      Result :='insert into BED_TRANSFER_NOTE(CHR_NO,PAT_NAME,BIRTH_DATE,FROM_DEPT_DR,TO_DEPT_DR,TRANSFER_NOTE_DATE,'+
               'RESON_FOR_ADMISSION,SIGNIFICANT_FINDINGS,DIAGNOSIS_MADE,PROCEDURES_PERFORMED,MEDICATIONS_AND_TREATMENTS,'+
               'CONDITION_AT_TRANSFER,TRANSFER_PEOPLE,RE_COMMUNICATION,WRITE_TIME,BED_NO,TRANSFER_PEOPLE_OTHER,SEX,AGE,'+
               'FROM_DEPT_BED,TO_DEPT_BED) values($PATIENT_NO$,$PATIENT_NAME$,$BIRTHDAY$,$FROM_DEPT_DR$,$TO_DEPT_DR$,$TRANSFER_NOTE_DATE$,'+
               '$REASON_FOR_ADMISSION$,$SIGNIFICANT_FINDINGS$,$DIAGNOSIS_MADE$,$PROCEDURES_PERFORMED$,$MEDICATIONS_AND_TREATMENTS$,'+
               '$CONDITION_AT_TRANSFER$,$TRANSFER_PEOPLE$,$RE_COMMUNICATION$,$WRITE_TIME$,$BED_NO$,$TRANSFER_PEOPLE_OTHER$,$SEX$,$AGE$,'+
               '$FROM_DEPT_BED$,$TO_DEPT_BED$)';
  end;
end;

Function changedoc(s_no :integer):string;
begin
  case s_no of
    0:
      Result :='select max(seq) as seq from ipd_shift_basic';
    1:
      Result :='insert into ipd_shift_basic(seq,chr_no,fee_no,ipd_date,ipd_time,doc_code,dept_code,COST_CODE,shift_desc,shift_flag,upd_oper,upd_date,upd_time,SHIFT_SEQ) '+
               'values($SEQ$,$CHR_NO$,$FEE_NO$,$IPD_DATE$,$IPD_TIME$,$DOC_CODE$,$DEPT_CODE$,$COST_CODE$,$SHIFT_DESC$,$SHIFT_FLAG$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$SHIFT_SEQ$)';
    2:
      Result :='update ipd_shift_basic set shift_flag=''Y'',can_oper=$CAN_OPER$,can_date=$CAN_DATE$,can_time=$CAN_TIME$ where fee_no=$FEE_NO$';
    3:
      Result :='select * from ipd_shift_basic where fee_no=$FEE_NO$';
    4:
      Result :='Update opd_basic set doc_code=$DOC_CODE$,UPD_DATE=$UPD_DATE$,UPD_TIME=$UPD_TIME$ WHERE FEE_NO=$FEE_NO$';
    5:
      Result :='Update opd_basic1 set INS_DOC=$DOC_CODE$,UPD_DATE=$UPD_DATE$,UPD_TIME=$UPD_TIME$ WHERE FEE_NO=$FEE_NO$';
    6:
      Result :='update ipd_shift_basic set SHIFT_DESC=$SHIFT_DESC$,UPD_oper=$UPD_OPER$,UPD_DATE=$UPD_DATE$,UPD_TIME=$UPD_TIME$ where fee_no=$FEE_NO$ AND SEQ=$SEQ$';
  end;
end;

Procedure statusinlist;
var
  Str : String;
begin
  Str := SetSys.ReadString('SYSTEM','REGSTATUS','');
  epdstatus.Clear;
  while not (Str='') do
  begin
    epdstatus.Add(ReturnId(Str)+'_'+SetSys.ReadString('STATUS',ReturnId(Str),''));
    Str := ReturnName(str);
  end;
end;


function statusSQL(KIND,PARAMT:STRING):String;
var
  Str,Str1 : String;
begin                                //REGSTATUS,REGDEPT
  Str := SetSys.ReadString('SYSTEM',KIND,'');
  Str1 := '';
  while not (Str='') do
  begin                                                     // STATUS,DEPT
    Str1 := Str1+Qt(ReturnId(Str))+','+ Qt(SetSys.ReadString(PARAMT,ReturnId(Str),''))+',' ;
    Str := ReturnName(str);
  end;
  IF KIND ='REGSTATUS' THEN //A:未到診 B:已報到 C:暫存 D:待完診 E:完診 F:已批價 G:已繳費 H:爽約
    Str1 := 'decode(a.OPD_STATUS,' +copy(Str1,1,Length(Str1)-1)+') as status_name,'
  ELSE
    Str1 := 'decode(substr(trim(c.subject),1,4),' +copy(Str1,1,Length(Str1)-1)+')';
  statusSQL := Str1;
end;


function getareabed(s_no :integer):string;
begin
  case s_no of
    0:
      Result :='select area_no as "序號",area_name as "區域" from area_basic order by Area_no';
    1:                // a.area_name as "區域",
      Result :='select b.bed_no as "床號",(select pat_name from opd_basic where b.fee_no=opd_basic.fee_no and Rownum=1) "病人" '+
               'from area_basic a,bed_area b where a.area_no=b.area_no and b.area_no=$AREA_NO$';
    2:
      Result :='update area_basic set area_name=$AREA_NAME$,UPD_OPER=$UPD_OPER$,UPD_DATE=$UPD_DATE$,UPD_TIME=$UPD_TIME$ where area_no=$AREA_NO$';
    3:
      Result :='insert into area_basic(AREA_NO,AREA_NAME,UPD_OPER,UPD_DATE,UPD_TIME) values($AREA_NO$,$AREA_NAME$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$)';
    4:
      Result :='Delete bed_area where area_no=$AREA_NO$';
    5:
      Result :='insert into bed_area(AREA_NO,BED_NO,UPD_OPER,UPD_DATE,UPD_TIME) values($AREA_NO$,$BED_NO$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$)';
    6:
      Result :='select nvl(max(area_no),0) as seq_no from area_basic';
  end;
end;

function getDitto(s_no :integer):string;
begin
  case (s_no) of
    1:                                                                                                                              // trim(pat_name) as 姓名,
      Result :='select * from ( '+
               'select decode(opd_kind,''E'',''急'',''O'',''門'',''檢查'') as "診別", opd_date as "日期",'+
               'to_char(to_date(to_char(to_number(a.opd_date + 19110000)),''YYYYMMDD''),''day'') as "星期",'+
               '(select smpl_desc from dept_basic where dept_basic.dept_code= a.dept_code) as "科別",'+
               '(select doc_name from doc_basic where doc_basic.doc_code=a.hia_doc)as 醫師,INS_SEQ_NO as "卡序",'+
               'FEE_NO,a.dept_code '+
               'from opd_basic a where a.chr_no=$chr_no$ and opd_kind <>''p'' and opd_kind <> ''S'' '+
               'union all '+
               'Select ''住'' as "診別",o.ipd_date as "日期",to_char(to_date(to_char(to_number(o.ipd_date + 19110000)),''YYYYMMDD''),''day'') as "星期",'+
               '(select smpl_desc from dept_basic p where o.gen_dept_code=p.dept_code) as "科別",'+
               '(select doc_name from doc_basic where doc_basic.doc_code=o.vs_doc_code)as "醫師",o.ins_seq_no as "卡序",'+
               //'(select doc_name from doc_basic where doc_basic.doc_code=o.vs_doc_code)as 醫師,o.ins_seq_no as "卡序",'+
               'o.Fee_no,o.gen_dept_code '+
               'from ipd_basic o where ipd_flag<>''D'' and  chr_no=$chr_no$) '+
               'Order by 2 desc';

    2: //OPD_BASIC基本資料
      Result := 'select CHR_NO,FEE_NO,OPD_DATE,SUB_DESC2,OBJ_DESC,SUB_DESC,PLAN_DESC,icd9_code1,icd9_code2,icd9_code3,icd9_code4,icd9_code5,'+
                '(select trim(chn_full_desc)||''_''||trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code=opd_basic.icd9_code1) as spec_code1,'+
                '(select trim(chn_full_desc)||''_''||trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code=opd_basic.icd9_code2) as spec_code2,'+
                '(select trim(chn_full_desc)||''_''||trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code=opd_basic.icd9_code3) as spec_code3,'+
                '(select trim(chn_full_desc)||''_''||trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code=opd_basic.icd9_code4) as spec_code4,'+
                '(select trim(chn_full_desc)||''_''||trim(eng_full_desc) from icd9_basic where icd9_basic.icd9_code=opd_basic.icd9_code5) as spec_code5 '+                
                'from opd_basic where opd_date=$opd_date$ and fee_no=$FEE_NO$';

    25:
      Result :='select a.*,(select trim(CHN_FULL_DESC)||''_''||trim(ENG_FULL_DESC) from icd_code_basic where icd_code=a.icd9_code1) as spec_code1,'+
               '(select trim(CHN_FULL_DESC)||''_''||trim(ENG_FULL_DESC) from icd_code_basic where icd_code=a.icd9_code2) as spec_code2,'+
               '(select trim(CHN_FULL_DESC)||''_''||trim(ENG_FULL_DESC) from icd_code_basic where icd_code=a.icd9_code3) as spec_code3,'+
               '(select trim(CHN_FULL_DESC)||''_''||trim(ENG_FULL_DESC) from icd_code_basic where icd_code=a.icd9_code4) as spec_code4,'+
               '(select trim(CHN_FULL_DESC)||''_''||trim(ENG_FULL_DESC) from icd_code_basic where icd_code=a.icd9_code5) as spec_code5 from '+
               '(select CHR_NO,FEE_NO,OPD_DATE,SUB_DESC2,OBJ_DESC,SUB_DESC,PLAN_DESC,'+
               'case '+
               '  when NVL(TRIM(icd10_code1),''0'') = ''0'' then (select icd_code from icd9_trans_icd10 where icd9_code=OPD_BASIC.icd9_code1 AND ROWNUM=1)'+
               '  ELSE icd10_code1 END icd9_code1,'+
               'case '+
               '  when NVL(TRIM(icd10_code2),''0'') = ''0'' then (select icd_code from icd9_trans_icd10 where icd9_code=OPD_BASIC.icd9_code2 AND ROWNUM=1)'+
               '  ELSE icd10_code2 END icd9_code2,'+
               'case '+
               '  when NVL(TRIM(icd10_code1),''0'') = ''0'' then (select icd_code from icd9_trans_icd10 where icd9_code=OPD_BASIC.icd9_code3 AND ROWNUM=1)'+
               '  ELSE icd10_code3 END icd9_code3,'+
               'case '+
               '  when NVL(TRIM(icd10_code1),''0'') = ''0'' then (select icd_code from icd9_trans_icd10 where icd9_code=OPD_BASIC.icd9_code4 AND ROWNUM=1)'+
               '  ELSE icd10_code4 END icd9_code4,'+
               'case '+
               '  when NVL(TRIM(icd10_code1),''0'') = ''0'' then (select icd_code from icd9_trans_icd10 where icd9_code=OPD_BASIC.icd9_code5 AND ROWNUM=1)'+
               '  ELSE icd10_code5 END icd9_code5 '+
               ' from opd_basic where  opd_date =$opd_date$ and fee_no=$FEE_NO$) a ';
    3: //ICD9 第五項以後
      Result := 'select SDIAG_CODE,CHN_SIMP_DESC from sdiag_detail where opd_date =$OPD_DATE$ AND fee_no =$FEE_NO$ AND chr_no=$CHR_NO$';
    26:
      Result := 'select a.icd_code as SDIAG_CODE,(select trim(CHN_FULL_DESC)||''_''||trim(ENG_FULL_DESC) from icd_code_basic  where icd_code=a.icd_code and rownum=1)as CHN_SIMP_DESC '+
                'from order_icd_code a where a.fee_no =$FEE_NO$ and seq_no > 5 ';

    4: //取用藥 1010702 ok
      Result := 'SELECT ''V'' "選",trim(MED_CODE) "代碼",(select trim(a.med_desc) from med_basic a where a.med_code=opd_med.med_code) as "名稱",'+
                'UNIT_QTY "次量",trim(CIR_CODE) "頻率",trim(UNIT_DESC) "單位",MED_DAYS "天數",trim(PATH_CODE) "途徑",ttl_qty "總量",trim(FEE_UNIT_DESC) "單位",'+
                'decode(SELF_PAY_FLAG,''Y'',''N'',''Y'') "健",PACK_AMT "包裝量",trim(opd_date) as "日期",trim(med_cmd) as "備註",trim(seq_no) as seq '+
                'FROM OPD_MED WHERE OPD_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' '+
                'union '+
                'SELECT ''V'' "選",med_code,med_desc,ud_dose,ud_cir,ud_unit,to_number(0) as med_days,ud_path,UD_QTY,'''' as fee_unit,pay_flag,'+
                'to_number(0) as pack_amt,begin_date,'''' as med_cmd,'''' from ud_order '+
                'where fee_no=$FEE_NO$';
    14: //藥囑
      Result := 'select '''' "選", trim(fee_code) "代碼",trim(fee_name) as "名稱",qty_num "次量",trim(cir_code) "頻率",trim(unit_desc) "單位",order_days "天數",'+
                'trim(path_code) "途徑",ttl_qty "總量",trim(fee_unit) "單位",self_pay_flag "健",to_number(nvl(trim(Exper_class),0)) "包裝量",trim(order_date) as "日期",'+
                'trim(memo_desc) as "備註",trim(order_seq),join_no,(select count(*) from nus_conf where fee_no=Epd_all_order.fee_no and sheet_no=Epd_all_order.sheet_no and status=''2'' ) as sheet_no, '+
                '(select count(*) from nus_conf where fee_no=Epd_all_order.fee_no and sheet_no=Epd_all_order.sheet_no ) as sheet_no2 '+
                'from Epd_all_order WHERE order_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' and dc_flag=''N'' and so_flag=''M'' $listnow$';//+

    24: //ORDER RENEW
      Result := 'SELECT trim(MED_CODE) MED_CODE,(select trim(a.med_desc) from med_basic a where a.med_code=opd_med.med_code) as FEENAME,'+
                'UNIT_QTY QTY,trim(CIR_CODE) CIR_CODE,trim(UNIT_DESC) UNIT,MED_DAYS ,trim(PATH_CODE) PATH_CODE,ttl_qty,trim(FEE_UNIT_DESC) FEE_UNIT,'+
                'decode(SELF_PAY_FLAG,''Y'',''N'',''Y'') SELF_PAY_FLAG,PACK_AMT ,opd_date,trim(med_cmd) as MED_CMD,trim(seq_no) as seq '+
                'FROM OPD_MED WHERE OPD_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' and cir_code <> ''STAT'' and cir_code <> ''ASORDER'' '+
                'AND INSTR(TRIM(CIR_CODE), ''PRN'') <= 0 and EXISTS(select fee_no from epd_all_order where fee_no=opd_med.fee_no and so_flag=''M''  '+
                'and order_seq=opd_med.seq_no and dc_flag=''N'') ';

    5: //檢查 1010709 ok
      Result := 'select ''V'' "選",A.FEE_CODE "代碼",(select trim(b.fee_desc) from orderitem_basic b where b.fee_code=a.fee_code and order_type=''E'') as "名稱",'+
                'A.QTY_NUM "數量",(select trim(b.send_cd_1) from orderitem_basic b where b.fee_code=a.fee_code and order_type=''E'') as "部位",'+
                'decode(A.SELF_PAY_FLAG,''Y'',''N'',''Y'') "健",a.opd_date,trim(a.item_no) as item_no,'''' as exper_type,'''' as exper_class,''E'' as order_type,'''' as memo_desc,trim(seq_no) as seq,'+
                'nvl((select order_status from epd_all_order d where d.fee_no=a.fee_no and  d.order_seq=a.seq_no and d.del_flag=''N''),''N'') as order_status '+
                'from Opd_Fee A WHERE  A.DEL_FLAG=''N''  AND A.FEE_NO=$FEE_NO$ AND A.OPD_DATE=$OPD_DATE$ and a.seq_no between ''60000'' and ''69999'' ';//;

    15: //檢驗
      Result := 'select '''' "選",A.FEE_CODE "代碼",a.FEE_NAME as "名稱",'+
                'A.QTY_NUM "數量",A.path_code "部位",A.SELF_PAY_FLAG "健",a.order_date,a.exper_class,a.exper_type,a.exper_class,trim(order_type),memo_desc,trim(order_seq),order_status,join_no '+
                'from epd_all_order a where FEE_NO=$FEE_NO$ AND order_DATE=$OPD_DATE$ and a.DEL_FLAG=''N''  AND a.dc_flag=''N'' and so_flag=''C'' $listnow$';

    6: //檢驗 1010706 OK
      Result := 'select ''V'' "選",A.FEE_CODE "代碼",(select b.FEE_NAME from ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE AND '+
                'trim(b.SEND_CD_3) = substr(trim(a.item_no),2,4))as "名稱", A.QTY_NUM "數量",'+
                '(SELECT TRIM(B.SEND_CD_2) FROM ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE AND trim(b.SEND_CD_3) = substr(trim(a.item_no),2,4)) "部位",'+
                'DECODE(A.SELF_PAY_FLAG,''Y'',''N'',''Y'') "健",a.opd_date AS "日期",'+
                '(SELECT TRIM(B.SEND_CD_2) FROM ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE AND trim(b.SEND_CD_3) = substr(trim(a.item_no),2,4)) AS EXPER_KIND,'+
                'substr(trim(a.item_no),2,2) AS "CODE_NO",substr(trim(a.item_no),2,4) AS "ITEM_NO",''L'' AS ORDER_TYPE,trim(seq_no) as seq,'+
                'nvl((select order_status from epd_all_order d where d.fee_no=a.fee_no and d.order_date=a.opd_date and d.order_seq=a.seq_no and d.del_flag=''N''),''N'') as order_status '+
                'from Opd_Fee A WHERE  A.DEL_FLAG=''N''  AND A.FEE_NO=$FEE_NO$ AND A.OPD_DATE=$OPD_DATE$ and a.seq_no between ''40000'' and ''49999'' ';//+

    16: //檢驗 1010706 OK
      Result := 'select '''' "選",A.FEE_CODE "代碼",trim(a.FEE_name) as "名稱", '+
                ' A.QTY_NUM "數量",TRIM(A.path_code) "部位",A.SELF_PAY_FLAG "健",'+
                'a.order_date,TRIM(a.PATH_CODE),TRIM(a.exper_type),TRIM(a.exper_class),TRIM(order_type),trim(a.order_seq),order_status,join_no '+
                'from epd_all_order a where FEE_NO=$FEE_NO$ AND order_DATE=$OPD_DATE$ and a.DEL_FLAG=''N''  AND a.dc_flag=''N'' and so_flag=''L''  $listnow$';

    7://取處置 OK
      Result := 'SELECT ''V'' "選",a.fee_code "代碼",b.fee_desc "名稱",a.position "部位",qty_num "數量",decode(SELF_PAY_FLAG,''Y'',''N'',''Y'') "健",a.opd_date,trim(seq_no) as seq,'+
                'nvl((select order_status from epd_all_order d where d.fee_no=a.fee_no and d.order_DATE=a.opd_date AND d.order_seq=a.seq_no and d.del_flag=''N''),''N'') as order_status '+
                'from opd_fee a, fee_basic b '+
                'where a.fee_code = b.fee_code and a.seq_no between ''70000'' and ''79999''  and a.opd_date =$OPD_DATE$ and a.fee_no =$FEE_NO$';//+

    17://取處置 OK
      Result := 'SELECT '''' "選",c.fee_code "代碼",trim(c.FEE_name) "名稱",c.part_code "部位",c.qty_num "數量",c.self_pay_flag "健保",c.order_date,trim(C.order_seq),c.order_status,join_no '+
                'from epd_all_order c,fee_basic d '+
                'WHERE c.fee_code = d.fee_code and FEE_NO=$FEE_NO$ AND order_DATE=$OPD_DATE$ and c.DEL_FLAG=''N''  AND c.dc_flag=''N'' and so_flag=''F'' $listnow$';


    8: //放射
      Result := 'select ''V'' "選",A.FEE_CODE "代碼",decode((select B.FEE_NAME from ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE  AND Trim(B.order_type)'+
                'IN (''X'',''X1'',''X2'',''X3'',''X4'') and substr(a.item_no,2,4)=b.SEND_CD_2),'''',(select fee_desc from fee_basic where fee_basic.FEE_CODE = a.FEE_CODE),'+
                '(select B.FEE_NAME from ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE  AND Trim(B.order_type) IN (''X'',''X1'',''X2'',''X3'',''X4'') and substr(a.item_no,2,4)=b.SEND_CD_2)) as "名稱",'+
                'A.QTY_NUM "數量",'+
                '(select trim(B.send_cd_1) from ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE  AND Trim(B.order_type)'+
                'IN (''X'',''X1'',''X2'',''X3'',''X4'') and substr(a.item_no,2,4)=b.SEND_CD_2) as "部位",decode(A.SELF_PAY_FLAG,''Y'',''N'',''Y'') "健",'+
                'a.opd_date,substr(a.item_no,2,2) as item_no,substr(a.item_no,2,4) as exper_type,'''','+
                '(select trim(B.order_type) from ORDERITEM_BASIC B where A.FEE_CODE =B.FEE_CODE and substr(a.item_no,2,4)=b.SEND_CD_2) as order_type,'''',trim(a.seq_no) as seq,'+
                'nvl((select order_status from epd_all_order d where d.fee_no=a.fee_no and d.order_date=a.opd_date and d.order_seq=a.seq_no and d.del_flag=''N''),''N'') as order_status '+
                'from Opd_Fee A WHERE A.FEE_NO=$FEE_NO$ AND A.OPD_DATE=$OPD_DATE$ AND  A.DEL_FLAG=''N'' and a.seq_no between ''50000'' and ''59999'' and not a.item_no is null ';//'+


    18: //放射
      Result := 'select '''' "選",FEE_CODE "代碼",trim(FEE_name)  as "名稱",QTY_NUM "數量", '+
                'trim(path_code) "部位",SELF_PAY_FLAG "健",order_date,trim(path_code),trim(exper_type),'''',order_type,memo_desc,trim(order_seq),order_status,join_no '+
                'from epd_all_order WHERE DEL_FLAG=''N'' AND FEE_NO=$FEE_NO$ AND order_DATE=$OPD_DATE$ and so_flag=''X'' $listnow$';

    9: //衛材1010702 ok
      Result := 'select ''V'' "選",A.FEE_CODE "代碼",(select B.mtrl_desc from mtrl_basic b where A.FEE_CODE =B.mtrl_CODE)as "名稱",A.QTY_NUM "數量",decode(A.SELF_PAY_FLAG,''Y'',''N'',''Y'') "健",a.opd_date,trim(a.seq_no) as seq,'+
                'nvl((select order_status from epd_all_order d where d.fee_no=a.fee_no and d.order_date=a.opd_date and  d.order_seq=a.seq_no and d.del_flag=''N''),''N'') as order_status '+
                ' from Opd_Fee A WHERE A.DEL_FLAG=''N''and a.seq_no between ''30000'' and ''39999''  AND A.FEE_NO=$FEE_NO$ AND A.OPD_DATE=$OPD_DATE$ ';//'+

    19: //衛材1010702 ok
      Result := 'select '''' "選",A.FEE_CODE "代碼",trim(a.FEE_name) as "名稱",A.QTY_NUM "數量",A.SELF_PAY_FLAG "健",a.order_date,trim(a.order_seq),a.order_status,join_no '+
                'from epd_all_order a where a.order_date= $OPD_DATE$ and a.fee_no=$FEE_NO$ and a.dc_flag=''N'' and a.del_flag=''N'' and so_flag=''O'' $listnow$';

    10: //文字醫囑
      Result := 'select ''V'' "選",FEE_CODE "代碼",order_text "名稱",order_date,sheet_no,trim(order_seq) '+
                'from epd_all_order where fee_no=$FEE_NO$ and order_date=$OPD_DATE$ and dc_flag=''N'' and del_flag=''N'' and so_flag=''T'' ';//$listnow$';

    20: //文字醫囑
      Result := 'select '''' "選",FEE_CODE "代碼",order_text "名稱",order_date,sheet_no,trim(order_seq),join_no '+
                'from epd_all_order where fee_no=$FEE_NO$ and order_date=$OPD_DATE$ and dc_flag=''N'' and del_flag=''N'' and so_flag=''T'' $listnow$';


    11:
      Result := 'select * from ( '+
                'select distinct ''急'' as "診別",order_date as "掛號日期",allorder_no as "次數",fee_no,b.doc_name as "開單",c.doc_name  as "主治",'+
                'a.upd_date as "日期",substr(trim(a.upd_time),1,2)||'':''||substr(trim(a.upd_time),3,2) as "時間",min(a.upd_date||a.upd_time) as min_time '+
                ' from epd_record A,doc_basic b,doc_basic c ' +
                '  where fee_no=$FEE_NO$ and ORDER_date=$EPD_DATE$ and seq_no<30000 and a.upd_oper=b.doc_code and a.vs_code=c.doc_code ' +
                '  group by order_date,allorder_no,fee_no,a.upd_oper,b.doc_name,c.doc_name,a.upd_date,a.upd_time ' +
                'union '+
                'select distinct ''急'' as "診別",order_date as "掛號日期",to_number(seq) as "次數",fee_no,b.doc_name as "開單",c.doc_name  as "主治",'+
                'a.upd_date as "日期",substr(trim(a.upd_time),1,2)||'':''||substr(trim(a.upd_time),3,2) as "時間",min(a.upd_date||a.upd_time) as min_time '+
                ' from epd_all_order A,doc_basic b,doc_basic c ' +
                '  where fee_no=$FEE_NO$ and ORDER_date=$EPD_DATE$ and dc_flag=''N'' and del_flag=''N'' and a.upd_oper=b.doc_code and a.vs_doc=c.doc_code ' +
                '  group by order_date,to_number(seq),fee_no,a.upd_oper,b.doc_name,c.doc_name,a.upd_date,a.upd_time ' +
                ') order by 3';
    12:
      Result :='select * from Epd_all_order WHERE order_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' and dc_flag=''N'' order by so_flag';
    13:                  
      Result :='select order_date as "日期",order_time as "時間",fee_name as "藥名",qty_num as "劑量",cir_code as "頻率",path_code as "途徑",'+
               '(select doc_name from doc_basic where doc_basic.doc_code =epd_all_order.order_doc) as "醫師",dc_flag as "DC" '+
               'from Epd_all_order WHERE order_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ and so_flag=''M'' AND DEL_FLAG=''N''';
    {21://全部頁面藥品
      Result :='SELECT DECODE(del_flag,''Y'',''刪'',order_date||''_''||order_time) AS "日期",fee_name AS "名稱",qty_num AS "劑量",unit_desc AS "單位",'+
               'cir_code AS "頻率",order_days AS "天數",path_code AS "途徑",fee_unit AS "單位",ttl_qty AS "總量",self_pay_flag"健",MEMO_DESC AS "備註",'+
               'fee_code AS "代碼",sheet_no as "序號",seq,seq_no '+
               'FROM EPD_ALL_ORDER WHERE order_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' and dc_flag=''N'' AND so_flag=''M'' and Trans_flag=''Y'''; }
    21://全部頁面藥品
      Result :='SELECT DECODE(DC_flag,''Y'',''DC'',upd_date||''_''||order_time) AS "日期",fee_name AS "名稱", qty_num AS "劑量",cir_code AS "頻率",ttl_qty AS "總量",'+
               '(SELECT COUNT(*) FROM NUS_CONF WHERE NUS_CONF.FEE_NO=EPD_ALL_ORDER.FEE_NO AND NUS_CONF.SHEET_NO=EPD_ALL_ORDER.SHEET_NO AND NUS_CONF.STATUS=''2'') AS "執行",'+
               'order_days AS "天數",path_code AS "途徑",unit_desc AS "單位",self_pay_flag"健",MEMO_DESC AS "備註",fee_code AS "代碼",decode(trim(order_type),''99'',''出院帶藥'',trim(order_type)) "出院帶藥",sheet_no as "序號",seq,seq_no '+
               'FROM EPD_ALL_ORDER WHERE order_DATE =$OPD_DATE$ and FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' AND so_flag=''M'' and Trans_flag=''Y'' '+
               'order by to_number(seq) desc,to_number(seq_no) desc';
               //1061013 shh ITe 11138 藥品概觀排序方式  by 筠棐
               //' ORDER BY Upd_Date DESC,CASE WHEN Cir_Code = ''ASORDER'' THEN 3 WHEN Cir_Code = ''STAT'' THEN 4 WHEN Cir_Code LIKE ''%PRN'' THEN 2 ELSE 1 END,' +
               //'Cir_Code,f_Med_Bag_Sort(Fee_Code),Fee_Code,To_Number(Seq) DESC,To_Number(Seq_No) DESC';
    22:
      Result :='SELECT DECODE(SO_FLAG,''L'',''檢驗'',''C'',''檢查'',''X'',''放射'') AS "類別",DECODE(del_flag,''Y'',''刪'',upd_date||''_''||order_time) AS "日期",'+
               'fee_name AS "醫囑內容",qty_num AS "數量",path_code AS "部位",self_pay_flag"健",urg_flag AS "急",MEMO_DESC AS "備註",fee_code AS "代碼" '+
               'FROM EPD_ALL_ORDER  WHERE order_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' and dc_flag=''N'' AND so_flag IN(''L'',''C'',''X'') and Trans_flag=''Y'' ORDER BY SO_FLAG';
    23:
      Result :='SELECT DECODE(SO_FLAG,''F'',''處置'',''O'',''衛材'',''T'',''敘述'') AS "類別",DECODE(del_flag,''Y'',''刪'',upd_date||''_''||order_time) AS "日期",'+
               'DECODE(SO_FLAG,''T'',order_text,fee_name) AS "醫囑內容",qty_num AS "數量",self_pay_flag"健",fee_code AS "代碼",part_code as "部位" '+
               'FROM EPD_ALL_ORDER  WHERE order_DATE =$OPD_DATE$ AND FEE_NO =$FEE_NO$ AND DEL_FLAG=''N'' and dc_flag=''N'' AND so_flag IN(''F'',''T'',''O'') and Trans_flag=''Y'' ORDER BY SO_FLAG';
  end;
end;

function report(seq: integer):string;//報告
begin
  case seq of
   0 : //檢驗
      Result := 'select distinct decode((select ''A'' from seen_reportdata where single_no=lab_list.sp_no and fee_no=lab_list.fee_no),''A'','' '',''V'') as "選", '+
                ' order_date as "日期",lab_no as "單號",sp_no as "報告單號",fee_no as "批價號" from Lab_list where fee_no=$FEE_NO$ ';
   1 :
      Result := 'select trim(b.item_name) as codename,Trim(a.r_item_name) as r_item_name,Trim(a.result_date_t) as result_date_t,Trim(a.result_data_q) as result_data_q,a.result_flag '+
                'from lab_data a join experiment b on b.item_no=a.item_no where a.sp_no=$SP_NO$';

   2 :
       Result := 'select (Select Trim(Code_oneName) from COMPARE_CODE_BASIC b where b.code_one=a.exper_class and ipd_related=''L1'') as "組別",'+
                 'Trim(a.r_item_name) as "項目",Trim(a.result_date_t) as "定性",Trim(a.result_data_q) as "定量",a.result_flag from lab_data a where a.sp_no=$SP_NO$';
   3 :
       Result := 'select * from seen_reportdata where single_no=$SP_NO$ and fee_no=$FEE_NO$';
  end;
end;

function nurse_eisai(seq : integer): String;
begin
  case seq of
    0: //全部
       Result := 'select orderitem_basic.*,'''' as self_pay_flag from orderitem_basic where $ORDERTYPE$ and use_status_o =''1'' $CONDITION$';
    1: //注射針、常用、輸血、導尿、鼻胃管、
       Result := 'select a.*,c.self_pay_flag, c.qty_num from orderitem_basic A LEFT JOIN FEE_GROUP_OPT C ON  A.FEE_CODE=C.MTRL_CODE and c.del_flag=''N'''+
                 ' where A.ORDER_TYPE IN(''S'',''F'') and A.use_status_o =''1'' $CONDITION$';
    2: //安全靜脈留置針16G自費別
       Result := 'select * from opd_fee where fee_no = $FEE_NO$ and fee_code IN($FEE_CODE$)';
    3: //取衛材開單資料單次清單           as ins_flag
       Result := 'select ''O'' as modifyType,b.nur_seq as seq,'''' as del,b.fee_code,c.fee_name,c.position_o,c.CIR_CODE_O as cir,'+
                 'b.qty_num,b.self_pay_flag ,'''' as EDate,'''' as ETime,'''' as Bdate,'''' as BTime,c.CHILD_FLAG_O as chil,'+
                 'c.JOIN_CODE as Joinno,c.ORDER_TYPE,'''' as chse,'''' as feename,b.old_seq as oldseq,b.unit_desc as UNIT,b.urg_flag '+
                 'from NurEisai b left join opd_fee a on a.fee_no=b.fee_no and a.fee_code=b.fee_code and a.seq_no=b.old_seq '+
                 'left join orderitem_basic c on b.fee_code=c.FEE_CODE where b.fee_no=$FEE_NO$ $NUR_SEQ$ '+
                 'and b.trans_status=''Y'' AND b.DEL_FLAG=''N'' order by b.seq_no';
    4: //取衛材開單資料清單
       Result := 'select distinct nur_seq,upd_date||upd_time as item from NurEisai  where fee_no=$FEE_NO$ and trans_status=''Y'' and del_flag=''N'' order by 1';
    5: //已處理過的處置項
       Result := 'update nus_conf set done=''Y'' where fee_no=$FEE_NO$ and sheet_no=$SHEET_NO$';
    6: //處置選單項目
       Result := 'select * from orderitem_basic where order_type=''F'' and use_status_o =''1'' $CONDITION$';
    7: //處置開單項目
       Result := 'select a.fee_code,a.fee_name,a.self_pay_flag,a.ttl_qty,a.pay_flag,a.order_seq,a.sheet_no '+
                 'FROM EPD_ALL_ORDER A where a.fee_no = $FEE_NO$ $SOFLAG$ '+
                 'AND not EXISTS(SELECT FEE_NO FROM NUS_CONF B WHERE A.SHEET_NO=B.SHEET_NO AND (b.DONE = ''Y'' or b.done is not null or b.status <> ''2'') and b.fee_no=a.fee_no )';

    8: //處置開單帶衛材項目              //as ins_flag
       Result := 'select ''N'' as modifyType,'''' as seq,'''' as del,b.mtrl_code as fee_code,c.fee_name,c.position_o,c.CIR_CODE_O as cir,'+
                 'b.qty_num,b.self_pay_flag ,'''' as EDate,'''' as ETime,'''' as Bdate,'''' as BTime,c.CHILD_FLAG_O as chil,'+
                 'c.JOIN_CODE as Joinno,c.ORDER_TYPE,'''' as chse,a.alise_desc as feename,'''' as oldseq,c.UNIT as UNIT,c.URG_FLAG '+
                 'from fee_group_opt b ,orderitem_basic c,fee_group_basic a '+
                 'where b.del_flag=''N'' and a.dept_code=$DEPTCODE$ and $FEECODE$ and b.mtrl_code = c.FEE_CODE and a.fee_code = b.fee_code and a.dept_code = b.dept_code';

    9: //處置帶衛材子項                    //as ins_flag
       Result := 'select ''N'' as modifyType,'''' as seq,'''' as del,a.tech_code as fee_code,b.fee_name,b.position_o,'+
                 'b.CIR_CODE_O as cir,a.qty_num,a.self_flag ,'''' as EDate,'''' as ETime,'''' as Bdate,'''' as BTime,'+
                 'b.CHILD_FLAG_O as chil,b.JOIN_CODE as Joinno,b.ORDER_TYPE,'''' as chse,b.fee_name as feename,'''' as oldseq,b.unit_o as UNIT,b.urg_flag '+
                 'from fee_child a,orderitem_basic b where a.fee_code=b.FEE_CODE  AND a.fee_code = $FEECODE$';
   10: //衛材寫入
       result := 'insert into NurEisai(nur_seq,seq_no,fee_no,fee_code,ord_type,old_seq,qty_num,URG_FLAG,UNIT_DESC,SELF_PAY_FLAG,trans_status,upd_oper,upd_date,upd_time,del_flag)'+
                 'VALUES($nur_seq$,$seq_no$,$fee_no$,$fee_code$,$ord_type$,$old_seq$,$qty_num$,$URG_FLAG$,$UNIT_DESC$,$SELF_PAY_FLAG$,$trans_status$,$upd_oper$,$upd_date$,$upd_time$,$del_flag$)';
   11: //取寫入衛材編號
       result := 'select (select max(a.nur_seq) from NurEisai a where a.fee_no=c.fee_no) as nur_seq,(select max(b.seq_no) from NurEisai b where b.fee_no=c.fee_no) as seq_no '+
                 'from NurEisai c where c.fee_no=$FEE_NO$';
   12:
       result := 'select fee_code,mtrl_desc,sum(qty_num) as qty_num,self_pay_flag '+
                 'from opd_fee left join mtrl_basic on mtrl_code=opd_fee.fee_code '+
                 'where opd_fee.opd_date >= $OPDDATE$ and opd_fee.fee_no like ''E%'' and opd_fee.seq_no like ''3%'' and opd_fee.upd_date between $STADATE$ and $ENDDATE$ and '+
                 'opd_fee.upd_time between $STATIME$ and $ENDTIME$  group by fee_code,mtrl_desc,self_pay_flag  order by 1';
  end;

end;

function nurse(seq: integer):string;
begin
  case seq of
   0 : //未執行
       Result := 'select decode(trim(b.check_date),'''','''',''確認'')||trim(b.check_date)||decode(trim(b.conf_date),'''','''',''#13#10'')||decode(trim(b.conf_date),'''','''',''執行'')||trim(b.conf_date) upd_date,'+
                 'trim(b.check_time)||decode(trim(b.conf_time),'''','''',''#13#10'')||trim(b.conf_time) upd_time, b.nus_check, b.nus_conf,'+
                 //'(select c.OPER_NAME from oper_basic c where b.nus_conf = c.OPER_ID and Rownum = 1),'+
                 'decode(trim(a.So_flag),''T'',''敘述'',''M'',''藥品'',''X'',''放射'',''F'',''處置'',''L'',''檢驗'',''O'',''衛材'',''C'',''檢查'','''') as so_flag,'+
                 'to_char(to_date(trim(a.upd_date)+19110000 || nvl(trim(a.order_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'') as orderdate,'+
                 'decode(trim(b.exe_date),'''','''',to_char(to_date(trim(b.exe_date)+19110000 || nvl(trim(b.exe_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'')) exe_date,  decode(trim(b.dc_date),'''','''',''DC'') dc_flag,'+
                 'decode(a.So_flag, ''T'', a.order_text, a.fee_name) as docorder,a.qty_num,'+
                 //a.path_code,20151229
                 'case when trim(a.So_flag)=''L'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     when trim(a.So_flag)=''C'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     else a.path_code end path_code,'+
                 'a.cir_code,d.doc_name,a.self_pay_flag,a.sheet_no,decode(trim(b.STATUS),''0'',''N'',''1'',''C'',''2'',''O'',b.STATUS) as orderSTATUS,'+
                 ' a.seq_no,a.seq,A.so_flag as ORDER_TYPE, b.DELAY_DATE||'' ''||b.DELAY_time, b.delay_desc, a.memo_desc '+
                 ' from epd_all_order a inner join doc_basic d on (a.order_doc = d.doc_code) left join (nus_conf b) '+
                 ' on (a.fee_no = b.fee_no and a.sheet_no = b.sheet_no and b.status < ''2'') where a.fee_no = $FEE_NO$ and a.del_flag = ''N'' and a.dc_flag = ''N'' and (nvl(trim(a.conf_date), ''0'') = ''0'' or nvl(trim(a.nus_date), ''0'') = ''0'') $SOFLAG$ '+
                 ' union all '+
                 'select decode(trim(b.check_date),'''','''',''確認'')||trim(b.check_date)||decode(trim(b.conf_date),'''','''',''#13#10'')||decode(trim(b.conf_date),'''','''',''執行'')||trim(b.conf_date) upd_date,'+
                 'trim(b.check_time)||decode(trim(b.conf_time),'''','''',''#13#10'')||trim(b.conf_time) upd_time, b.nus_check, b.nus_conf,'+
                 //'(select c.OPER_NAME from oper_basic c where b.nus_conf = c.OPER_ID and Rownum = 1),'+
                 'decode(trim(a.So_flag),''T'',''敘述'',''M'',''藥品'',''X'',''放射'',''F'',''處置'',''L'',''檢驗'',''O'',''衛材'',''C'',''檢查'','''') as so_flag,'+
                 'to_char(to_date(trim(a.upd_date)+19110000 || nvl(trim(a.order_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'') as orderdate,'+
                 'decode(trim(b.exe_date),'''','''',to_char(to_date(trim(b.exe_date)+19110000 || nvl(trim(b.exe_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'')) exe_date, decode(trim(b.dc_date),'''','''',''DC'') dc_flag,'+
                 'decode(a.So_flag, ''T'', a.order_text, a.fee_name) as docorder,a.qty_num,'+
                 //a.path_code,20151229
                 'case when trim(a.So_flag)=''L'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     when trim(a.So_flag)=''C'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     else a.path_code end path_code,'+
                 'a.cir_code,(select doc_name from doc_basic where doc_basic.doc_code=a.order_doc and Rownum = 1) as doc_name,'+
                 'a.self_pay_flag,a.sheet_no,decode(trim(b.STATUS),''0'',''N'',''1'',''C'',''2'',''O'',b.STATUS) as orderSTATUS, b.seq_no,a.seq,B.ORDER_TYPE, b.DELAY_DATE||'' ''||b.DELAY_time, b.delay_desc, a.memo_desc '+
                 ' from nus_conf b left join(epd_all_order a) on (a.fee_no = b.fee_no and a.sheet_no = b.sheet_no ) where b.fee_no = $FEE_NO$ and b.order_type =''M'' and b.status < ''2'' and nvl(trim(b.dc_date),''0'')=''0'' '+
                 'and to_date(decode(trim(b.exe_date),'''',to_char(sysdate,''YYYYMMDD''),(trim(b.exe_date) + 19110000)) || nvl(trim(b.exe_time), ''0000''),''YYYYMMDDHH24MISS'') < sysdate+60/24/60 order by sheet_no, seq_no';


   1 : //已執行查詢
       Result := 'select decode(trim(b.check_date),'''','''',''確認'')||trim(b.check_date)||decode(trim(b.conf_date),'''','''',''#13#10'')||decode(trim(b.conf_date),'''','''',''執行'')||trim(b.conf_date) upd_date,'+
                 'trim(b.check_time)||decode(trim(b.conf_time),'''','''',''#13#10'')||trim(b.conf_time) upd_time, b.nus_check, b.nus_conf,'+
                 //'(select c.OPER_NAME from oper_basic c where b.nus_check = c.OPER_ID and Rownum = 1),(select c.OPER_NAME from oper_basic c where b.nus_conf = c.OPER_ID and Rownum = 1),'+
                 'decode(trim(a.So_flag),''T'',''敘述'',''M'',''藥品'',''X'',''放射'',''F'',''處置'',''L'',''檢驗'',''O'',''衛材'',''C'',''檢查'','''') as so_flag,'+
                 'to_char(to_date(trim(a.upd_date)+19110000 || nvl(trim(a.order_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'') as orderdate,'+
                 'decode(trim(b.exe_date),'''','''',to_char(to_date(trim(b.exe_date)+19110000 || nvl(trim(b.exe_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'')) exe_date,  decode(trim(b.dc_date),'''','''',''DC'') dc_flag,'+
                 'decode(a.So_flag, ''T'', a.order_text, a.fee_name) as docorder,a.qty_num,'+
                 //a.path_code,20151229
                 'case when trim(a.So_flag)=''L'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     when trim(a.So_flag)=''C'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     else a.path_code end path_code,'+
                 'a.cir_code,d.doc_name,a.self_pay_flag,a.sheet_no,decode(trim(b.STATUS),''0'',''N'',''1'',''C'',''2'',''O'',b.STATUS) as orderSTATUS,'+
                 ' a.seq_no,a.seq,A.so_flag as ORDER_TYPE, b.DELAY_DATE||'' ''||b.DELAY_time, b.delay_desc, a.memo_desc '+
                 ' from epd_all_order a inner join doc_basic d on (a.order_doc = d.doc_code) left join (nus_conf b) '+
                 ' on (a.fee_no = b.fee_no and a.sheet_no = b.sheet_no ) where a.fee_no = $FEE_NO$ and a.del_flag = ''N'' and a.dc_flag = ''N'' $SOFLAG$ '+
                 ' union all '+
                 'select decode(trim(b.check_date),'''','''',''確認'')||trim(b.check_date)||decode(trim(b.conf_date),'''','''',''#13#10'')||decode(trim(b.conf_date),'''','''',''執行'')||trim(b.conf_date) upd_date,'+
                 'trim(b.check_time)||decode(trim(b.conf_time),'''','''',''#13#10'')||trim(b.conf_time) upd_time, b.nus_check, b.nus_conf,'+
                 //'(select c.OPER_NAME from oper_basic c where b.nus_check = c.OPER_ID and Rownum = 1),(select c.OPER_NAME from oper_basic c where b.nus_conf = c.OPER_ID and Rownum = 1),'+
                 'decode(trim(a.So_flag),''T'',''敘述'',''M'',''藥品'',''X'',''放射'',''F'',''處置'',''L'',''檢驗'',''O'',''衛材'',''C'',''檢查'','''') as so_flag,'+
                 'to_char(to_date(trim(a.upd_date)+19110000 || nvl(trim(a.order_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'') as orderdate,'+
                 'decode(trim(b.exe_date),'''','''',to_char(to_date(trim(b.exe_date)+19110000 || nvl(trim(b.exe_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'')) exe_date, decode(trim(b.dc_date),'''','''',''DC'') dc_flag,'+
                 'decode(a.So_flag, ''T'', a.order_text, a.fee_name) as docorder,a.qty_num,'+
                 //a.path_code,20151229
                 'case when trim(a.So_flag)=''L'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     when trim(a.So_flag)=''C'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     else a.path_code end path_code,'+
                 'a.cir_code,(select doc_name from doc_basic where doc_basic.doc_code=a.order_doc and Rownum = 1) as doc_name,'+
                 'a.self_pay_flag,a.sheet_no,decode(trim(b.STATUS),''0'',''N'',''1'',''C'',''2'',''O'',b.STATUS) as orderSTATUS, b.seq_no,a.seq,B.ORDER_TYPE, b.DELAY_DATE||'' ''||b.DELAY_time, b.delay_desc, a.memo_desc '+
                 ' from nus_conf b left join(epd_all_order a) on (a.fee_no = b.fee_no and a.sheet_no = b.sheet_no ) where b.fee_no = $FEE_NO$ and b.order_type =''M'' order by sheet_no, seq_no';

   11: //未執行查詢處置
       Result := 'select decode(trim(b.check_date),'''','''',''確認'')||trim(b.check_date)||decode(trim(b.conf_date),'''','''',''#13#10'')||decode(trim(b.conf_date),'''','''',''執行'')||trim(b.conf_date) upd_date,'+
                 'trim(b.check_time)||decode(trim(b.conf_time),'''','''',''#13#10'')||trim(b.conf_time) upd_time, b.nus_check, b.nus_conf,'+
                 //'(select c.OPER_NAME from oper_basic c where b.nus_check = c.OPER_ID and Rownum = 1),(select c.OPER_NAME from oper_basic c where b.nus_conf = c.OPER_ID and Rownum = 1),'+
                 'decode(trim(a.So_flag),''T'',''敘述'',''M'',''藥品'',''X'',''放射'',''F'',''處置'',''L'',''檢驗'',''O'',''衛材'',''C'',''檢查'','''') as so_flag,'+
                 'to_char(to_date(trim(a.upd_date)+19110000 || nvl(trim(a.order_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'') as orderdate,'+
                 'decode(trim(b.exe_date),'''','''',to_char(to_date(trim(b.exe_date)+19110000 || nvl(trim(b.exe_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'')) exe_date, decode(trim(b.dc_date),'''','''',''DC'') dc_flag,'+
                 'decode(a.So_flag, ''T'', a.order_text, a.fee_name) as docorder,a.qty_num,'+
                 //a.path_code,20151229
                 'case when trim(a.So_flag)=''L'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     when trim(a.So_flag)=''C'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     else a.path_code end path_code,'+
                 'a.cir_code,d.doc_name,a.self_pay_flag,a.sheet_no,decode(trim(b.STATUS),''0'',''N'',''1'',''C'',''2'',''O'',b.STATUS) as orderSTATUS,'+
                 ' decode(trim(a.So_flag),''M'',b.seq_no,a.seq_no) as seq_no,'+
                 'a.seq,a.so_flag, b.DELAY_DATE||'' ''||b.DELAY_time, b.delay_desc, a.memo_desc '+
                 ' from epd_all_order a inner join doc_basic d on (a.order_doc = d.doc_code) left join (nus_conf b) '+
                 ' on (a.fee_no = b.fee_no and a.sheet_no = b.sheet_no ) where a.fee_no = $FEE_NO$ and a.del_flag = ''N'' and a.dc_flag = ''N'' $SOFLAG$ ';
   12: //已執行查詢處置
       Result := 'select decode(trim(b.check_date),'''','''',''確認'')||trim(b.check_date)||decode(trim(b.conf_date),'''','''',''#13#10'')||decode(trim(b.conf_date),'''','''',''執行'')||trim(b.conf_date) upd_date,'+
                 'trim(b.check_time)||decode(trim(b.conf_time),'''','''',''#13#10'')||trim(b.conf_time) upd_time, b.nus_check, b.nus_conf,'+
                 //'(select c.OPER_NAME from oper_basic c where b.nus_check = c.OPER_ID and Rownum = 1),(select c.OPER_NAME from oper_basic c where b.nus_conf = c.OPER_ID and Rownum = 1),'+
                 'decode(trim(a.So_flag),''T'',''敘述'',''M'',''藥品'',''X'',''放射'',''F'',''處置'',''L'',''檢驗'',''O'',''衛材'',''C'',''檢查'','''') as so_flag,'+
                 'to_char(to_date(trim(a.upd_date)+19110000 || nvl(trim(a.order_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'') as orderdate,'+
                 'decode(trim(b.exe_date),'''','''',to_char(to_date(trim(b.exe_date)+19110000 || nvl(trim(b.exe_time), ''0000''),''YYYYMMDDHH24MISS''),''MM-DD HH24MI'')) exe_date, decode(trim(b.dc_date),'''','''',''DC'') dc_flag,'+
                 'decode(a.So_flag, ''T'', a.order_text, a.fee_name) as docorder,a.qty_num,'+
                 //a.path_code,20151229
                 'case when trim(a.So_flag)=''L'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''L2'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     when trim(a.So_flag)=''C'' then (select trim(Code_oneName) from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and Trim(Code_one) = TRIM(a.path_code))'+
                 '     else a.path_code end path_code,'+
                 'a.cir_code,d.doc_name,a.self_pay_flag,a.sheet_no,decode(trim(b.STATUS),''0'',''N'',''1'',''C'',''2'',''O'',b.STATUS) as orderSTATUS,'+
                 ' decode(trim(a.So_flag),''M'',b.seq_no,a.seq_no) as seq_no,'+
                 'a.seq,a.so_flag, b.DELAY_DATE||'' ''||b.DELAY_time, b.delay_desc, a.memo_desc '+
                 ' from epd_all_order a inner join doc_basic d on (a.order_doc = d.doc_code) left join nus_conf b on (a.fee_no = b.fee_no and a.sheet_no = b.sheet_no )'+
                 ' where a.fee_no = $FEE_NO$ and a.del_flag = ''N'' and not exists(select fee_no from nus_conf where a.fee_no = b.fee_no and a.sheet_no = b.sheet_no and b.status = ''2'') and a.dc_flag = ''N'' $SOFLAG$ ';


   2 : //護理簽囑
       Result := 'update epd_all_order set $CONDITION$ WHERE FEE_NO=$FEE_NO$ AND SEQ_NO=$SEQ_NO$ AND SHEET_NO=$SHEET_NO$';
   20: //護理簽囑
       Result := 'select count(*) as qry from nus_conf where fee_no =$FEE_NO$ and order_type = ''M'' and status in (''0'', ''1'') and sheet_no=$SHEET_NO$';
   3 :
       result := 'insert into nus_conf(SHEET_NO,SEQ,SEQ_NO,FEE_NO,STATUS,NUS_OPER,UPD_DATE,UPD_TIME,DEL_FLAG,'+
                 'PRINTSHEET,NUS_CHECK,NUS_CONF,CHECK_DATE,CHECK_TIME,CONF_DATE,CONF_TIME) '+
                 'VALUES($SHEET_NO$,$SEQ$,$SEQ_NO$,$FEE_NO$,$STATUS$,$NUS_OPER$,$UPD_DATE$,$UPD_TIME$,$DEL_FLAG$,'+
                 '$PRINTSHEET$,$NUS_CHECK$,$NUS_CONF$,$CHECK_DATE$,$CHECK_TIME$,$CONF_DATE$,$CONF_TIME$)';
   4 :
       result := 'update nus_conf set $CONDITION$ where SHEET_NO=$SHEET_NO$ and FEE_NO=$FEE_NO$ and Seq_no=$SEQ_NO$';
   5 :
       result := 'select * from nus_conf where SHEET_NO=$SHEET_NO$ and FEE_NO=$FEE_NO$ and STATUS in($STATUS$)';
   6 :
       result := 'select decode(a.status, ''0'', ''X'', '''') as "完成",decode(a.status, ''1'', ''X'', '''') as "執行",'+
                 ' b.fee_code as "代碼",decode(trim(b.So_flag),''T'',''敘述'',''M'',''藥品'',''X'',''放射'',''F'',''處置'',''L'','+
                 '''檢驗'',''O'',''衛材'',''C'',''檢查'','''') as "類別",'+
                 'to_char(to_date(trim(b.order_date)+19110000 || nvl(trim(b.order_time), ''0000''),''YYYYMMDDHH24MISS''),''YYYY-MM-DD HH24:MI:SS'') as "ordtime",'+
                 'decode(b.So_flag, ''T'', b.order_text, b.fee_name) as "ordername",d.oper_name as "醫師",b.qty_num as "數量",b.cir_code as "頻率",'+
                 '(select c.OPER_NAME from oper_basic c where a.nus_oper = c.OPER_ID) as "護理",a.upd_date as "日期",a.upd_time as "時間" '+
                 'from nus_conf a,epd_all_order b,oper_basic d '+
                 'where a.fee_no=$FEE_NO$ and a.sheet_no=b.sheet_no and a.fee_no=b.fee_no and a.printsheet is null and b.order_doc=d.oper_id ';
   7 : //寫入護理記錄
       result := 'insert into CARERECORD_DATA_ER(carerecord_id,creatno,guide_no,updno,creatname,creattime,updtime,recordtime,'+
                 'feeno,title,c,c_other,deleted,self,sign)'+ //,s,s_other,o,o_other,i,i_other,e,e_other ,ver,signtime,signstatus,$VER$,$SIGNTIME$,$SIGNSTATUS$
                 ' VALUES($CARERECORD_ID$,$CREATNO$,$GUIDE_NO$,$UPDNO$,$CREATNAME$,to_date(to_char(sysdate, ''YYYYMMDDHH24MISS''),''YYYYMMDDHH24MISS'')'+
                 ',to_date(to_char(sysdate, ''YYYYMMDDHH24MISS''),''YYYYMMDDHH24MISS''),to_date(to_char(sysdate, ''YYYYMMDDHH24MISS''),''YYYYMMDDHH24MISS''),'+
                 '$FEENO$,$TITLE$,$C$,$C_OTHER$,$DELETED$,$SELF$,$SIGN$)';
   71: //更新護理記錄
       result := 'update CARERECORD_DATA_ER set c_other=$C_OTHER$,updno=$UPDNO$,updtime=to_date(to_char(sysdate, ''YYYYMMDDHH24MISS''),''YYYYMMDDHH24MISS'')'+
                 ' where carerecord_id = $CARERECORD_ID$ and feeno = $FEENO$';
   8 : //寫入護理生理量測記錄
       result := 'insert into DATA_VITALSIGN_ER(FEE_NO,CARERECORD_ID,VS_ITEM,VS_RECORD,RECORD_USER,RECORD_DATE,CREATE_USER,CREATE_DATE,MODIFY_USER,MODIFY_DATE) '+
                 'VALUES($FEE_NO$,$CARERECORD_ID$,$VS_ITEM$,$VS_RECORD$,$RECORD_USER$,$RECORD_DATE$,$CREATE_USER$,to_date(to_char(sysdate, ''YYYYMMDDHH24MISS''),''YYYYMMDDHH24MISS''),'+
                 '$MODIFY_USER$,to_date(to_char(sysdate, ''YYYYMMDDHH24MISS''),''YYYYMMDDHH24MISS''))';
   81: //寫入護理生理量測記錄
       result := 'update DATA_VITALSIGN_ER set VS_RECORD=$VS_RECORD$,MODIFY_USER=$MODIFY_USER$,MODIFY_DATE=to_date(to_char(sysdate, ''YYYYMMDDHH24MISS''),''YYYYMMDDHH24MISS'') '+
                 'where FEE_NO=$FEE_NO$ and RECORD_DATE=to_date($RECORD_DATE$,''YYYY/MM/DD HH24:MI:SS'') and VS_ITEM=$VS_ITEM$';
   84:
       result := 'update DATA_VITALSIGN_ER set  RECORD_DATE=$RECORD_DATEUP$'+
                 ' where FEE_NO=$FEE_NO$ and RECORD_DATE=to_date($RECORD_DATE$,''YYYY/MM/DD HH24:MI:SS'')';
   82: //取清單(護理生理量測記錄)
       result := 'select distinct to_char(record_date,''YYYY/MM/DD HH24:MI'') as record_date,CARERECORD_ID from data_vitalsign_er where fee_no=$FEE_NO$ and record_date >= sysdate-180 ORDER BY RECORD_DATE';
   83: //取明細(護理生理量測記錄)
       result := 'select a.*,to_char(record_date,''HH24MI'') mdt from data_vitalsign_er a where fee_no=$FEE_NO$ and record_date = to_date($RECORD_DATE$,''YYYY/MM/DD HH24:MI:SS'')';
   10: //寫入取消已執行、已註記未給藥原因記錄
       result := 'insert into NUS_CONF_LOG(sheet_no,seq,seq_no,fee_no,status,cncl_oper,cncl_date,cncl_time,old_oper,old_date,old_time)'+
                 'VALUES($SHEET_NO$,$SEQ$,$SEQ_NO$,$FEE_NO$,$STATUS$,$CNCL_OPER$,$CNCL_DATE$,$CNCL_TIME$,$OLD_OPER$,$OLD_DATE$,$OLD_TIME$)';
  end;
end;

function MedDC(s_no :integer):string;
begin
  case s_no of
    0:
      Result := ' UPDATE epd_all_order set dc_date=$DC_DATE$, dc_time=$DC_TIME$, DC_FLAG=''Y'',dc_oper=$DC_OPER$,dc_Sheet_No=$DC_SHEET_NO$ where fee_no=$FEE_NO$ and sheet_no=$SHEET_NO$';
    1: //判斷是否全部給藥
      Result := ' select count(*) qty from nus_conf where fee_no=$FEE_NO$ and sheet_no=$SHEET_NO$ and nvl(trim(DC_date),''0'')=''0'' and status < ''2''';
  end;
end;

function SetParamter(var Source:String; Paramter:String;Values : String):Boolean;
begin
  Try
    Source := StringReplace(Source,Paramter,Values,[rfReplaceAll]);
    Result := True;
  except
    Result := False;
  end;
end;

function phrase(seq: integer):string;
begin
  case seq of
   0 : Result := 'select * from tmu_phrase_main where phrase_Father=$PHRASE_FATHER$ and phrase_level in(''ALL'',$DEPT$,$DOCCODE$) and phrase_kind=$phrase_kind$  order by sort';
   1 : Result := 'select * from tmu_phrase_main where phrase_level=''ALL'' and phrase_kind=''5'' and phrase_father=$phrase_father$ ORDER BY PHRASE_ID ';
  end;

end;

function GetPatList(seq : integer): String;
var
  strs : string;
begin
  case seq of
    0 : begin
        strs := 'select a.opd_date,a.dept_code,a.seq_no,a.fee_no,a.CHR_NO,a.PAT_NAME,a.fee_no,a.dept_room,a.room_desc,a.order_status,a.shift_no,'+
                       '(select exe_doc from opd_basic1 where opd_basic1.fee_no=b.fee_no AND OPD_BASIC1.OPD_DATE = b.opd_date and rownum = 1) as doc_name,a.doc_code,a.id_no,a.pat_id,'+statusSQL('REGSTATUS','STATUS')+'a.opd_status,a.upd_date,a.rsv_opd_time,'+
                       '(select INS_doc from opd_basic1 where opd_basic1.fee_no = b.fee_no AND OPD_BASIC1.OPD_DATE = b.opd_date and rownum = 1) as HIA_name,a.room_desc,b.HIA_doc,';
                       if icdchangea <> 'N' then
                         strs := strs + '(select trim(icd_code_basic.icd_code)||''_''||trim(icd_code_basic.eng_simp_desc) from icd_code_basic where icd_code_basic.icd_code=b.icd10_code1 and Rownum = 1) as icd9_desc,'
                       else
                         strs := strs + '(select trim(icd9_basic.icd9_code)||''_''||trim(icd9_basic.eng_simp_desc) from icd9_basic where icd9_basic.icd9_code=b.icd9_code1 and Rownum = 1) as icd9_desc,';
                       strs := strs + 'b.med_type,b.med_no,b.part_code,b.ins_seq_no,b.sub_desc,b.obj_desc,b.sub_desc2,b.plan_desc,b.case_type,b.med_days,b.dept_sub,'+
                       '(select birth_date from chr_basic where chr_basic.chr_no=a.chr_no and Rownum = 1) as birth_date,'+
                       '(select bed_no from bed_area where fee_no=a.fee_no and Rownum=1) as epd_bed,'+
                       '(select sex_type from chr_basic where chr_basic.chr_no=a.chr_no and Rownum = 1) as sex_type,'+
                       '(select care from epd_his where epd_his.fee_no=a.fee_no and epd_his.epd_date=a.opd_date and Rownum = 1) as exithosp,'+
                       '(SELECT trim(log_date)||''_''||trim(log_time) FROM EPD_TIMELOG WHERE EPD_TIMELOG.FEE_NO=a.fee_no and EPD_TIMELOG.LOG_DATE >= '+qt(Minus_six_months_date)+' AND EPD_TIMELOG.time_type=(SELECT time_type FROM epd_timetype_bas WHERE type_name=''FOUR_HOURS'' and Rownum=1) and cncl_flag=''N'' and Rownum=1) AS fourhours,'+
                       '(SELECT CLASS_NO FROM epd_his where epd_his.fee_no=b.fee_no and epd_his.epd_date=b.opd_date and epd_his.chr_no=b.chr_no and Rownum=1) as triage,'+
                       ''''' as systolic,'''' as diastolic,'''' as pulse,'''' as temperature,'''' as triagedept,'''' as date_dt,'''' as weight, '+
                       '(select ps from doc_er_shift where doc_er_shift.fee_no=a.fee_no and UPD_DATA >='+QT(dateformat(5,Now-180))+' and Rownum = 1) as changenote,'''' as shift_flag, '+
                       '(select fee_no from besp_ipd where besp_ipd.fee_no= a.fee_no and source_type=''E'' and besp_date >='+Qt(Minus_six_months_date)+' and Rownum=1) as ipdbed,a.rsv_opd_time, '+
                       ''''' as tragenu,'''' as alltrage,'+
                       '(SELECT FEE_NO FROM BESP_IPD WHERE BESP_IPD.FEE_NO= a.fee_no and besp_ipd.besp_date >='+Qt(Minus_six_months_date)+' and Rownum = 1) AS epdBESPNEW,'+
                       '(SELECT BED_NO FROM IPD_BASIC WHERE FEE_NO=(SELECT FEE_NO_I FROM BESP_IPD WHERE BESP_IPD.FEE_NO= a.fee_no and besp_date >='+Qt(Minus_six_months_date)+' and Rownum=1) and Rownum=1) AS epdBESPIN,'+
                       IPDBEDCHK+' AS epdBESPCHK, '+
                       '(select area_name from area_basic where area_no in(select decode(TRIM(epd_clinic_code),''NULL'','''',trim(epd_clinic_code)) from epd_vcb_basic where fee_no=a.fee_no and cncl_flag=''N'' and Rownum=1) and Rownum=1) as epd_area, '+
                       '(select end_date from epd_his where epd_his.fee_no = a.fee_no and epd_his.epd_date = a.opd_date and Rownum = 1) as end_date,'+
                       '(select end_time from epd_his where epd_his.fee_no = a.fee_no and epd_his.epd_date = a.opd_date and Rownum = 1) as end_time, '+
                       'nvl((SELECT ''Y'' FROM ER_STATUS where status=''8'' and cncl_flag=''N'' and fee_no=a.fee_no and Rownum = 1),''N'') as obs,'+
                       '(select EPD_STATUS from epd_his where epd_his.fee_no = a.fee_no and epd_his.epd_date = a.opd_date and Rownum = 1) as EPD_STATUS,'+
                       '(select ac_type from chr_basic where chr_basic.chr_no=a.chr_no and Rownum = 1) as AC_TYPE '+
                       ',pkutility.f_Cmp_Time_Period_Min(a.opd_date, a.rsv_opd_time, pkutility.f_Sys_Date, pkutility.f_Sys_Time) epd_ttime '+
                       'from reg_basic a '+
                       'join opd_basic b on a.opd_date = b.opd_date and a.fee_no = b.fee_no '+ qstr +
                       ' a.OPD_KIND=''E'' and a.cncl_flag=''N'' ' + qorderstr ;
        Result := strs;
        end;
    1 : Result := 'select a.opd_date,a.dept_code,a.seq_no,a.fee_no,a.CHR_NO,a.PAT_NAME,a.fee_no,a.dept_room,a.room_desc,a.order_status,a.shift_no,'+
                       '(select doc_NAME from doc_BASIC where doc_BASIC.doc_code=b.doc_code) as doc_name,a.doc_code,a.id_no,a.pat_id,a.opd_status,a.upd_date,a.upd_time,'+
                       '(select doc_NAME from doc_BASIC where doc_BASIC.doc_code=b.HIA_doc) as HIA_name,a.room_desc,b.HIA_doc,'+
                       '(select trim(icd9_basic.icd9_code)||''_''||trim(icd9_basic.eng_simp_desc) from icd9_basic where icd9_basic.icd9_code=opd_basic.icd9_code1) as icd9_desc,'+
                       'b.med_type,b.med_no,b.part_code,b.ins_seq_no,b.sub_desc,b.obj_desc,b.sub_desc2,b.plan_desc,b.case_type,b.med_days,b.dept_sub,'+
                       '(select birth_date from chr_basic where chr_basic.chr_no=a.chr_no) as birth_date,'+
                       '(select bed_no from bed_area where fee_no=a.fee_no) as epd_bed,'+
                       '(select sex_type from chr_basic where chr_basic.chr_no=a.chr_no) as sex_type,'+
                       '(select c.triage_level from '+TRIAGETABLENAME+' c where c.id_no=a.id_no and (c.arrival_date||substr(arrival_time,1,3))=(a.opd_date+19110000)||substr(a.upd_time,1,3) ) as triage,'+
                       '(select c.systolic from '+TRIAGETABLENAME+' c where c.id_no=a.id_no and (c.arrival_date||substr(arrival_time,1,3))=(a.opd_date+19110000)||substr(a.upd_time,1,3) ) as systolic,'+
                       '(select c.diastolic from '+TRIAGETABLENAME+' c where c.id_no=a.id_no and (c.arrival_date||substr(arrival_time,1,3))=(a.opd_date+19110000)||substr(a.upd_time,1,3) ) as diastolic,'+
                       '(select c.pulse from '+TRIAGETABLENAME+' c where c.id_no=a.id_no and (c.arrival_date||substr(arrival_time,1,3))=(a.opd_date+19110000)||substr(a.upd_time,1,3) ) as pulse,'+
                       '(select c.temperature from '+TRIAGETABLENAME+' c where c.id_no=a.id_no and (c.arrival_date||substr(arrival_time,1,3))=(a.opd_date+19110000)||substr(a.upd_time,1,3) ) as temperature,'+
                       '(select c.weight from '+TRIAGETABLENAME+' c where c.id_no=a.id_no and (c.arrival_date||substr(arrival_time,1,3))=(a.opd_date+19110000)||substr(a.upd_time,1,3) ) as weight '+
                       'from reg_basic a,opd_basic b where a.OPD_KIND=''E'' and a.cncl_flag=''N'' '+
                       'and a.opd_date=b.opd_date and a.fee_no=b.fee_no '+qstr+' order by triage,a.seq_no';

    {20130423學承
    2 : Result := 'select a.chr_no,a.pat_name,(select c.triage_level from '+TRIAGETABLENAME+' c where c.id_no=a.id_no and trim(c.id_no)<>''*'' and (c.arrival_date||substr(arrival_time,1,3))=(a.opd_date+19110000)||substr(a.upd_time,1,3) ) as triage '+
                       ' from reg_basic a where a.OPD_KIND=''E'' and a.cncl_flag=''N'' and a.opd_date=$opd_date$ and a.opd_status in('+qt(stas('A'))+','+qt(stas('B'))+') order by triage,a.seq_no';}
    2 : Result := 'select * from epd_his where end_date=''9999999'' and epd_status is null and epd_date >=''1020209'' ';
    3 : Result := 'select * from opd_basic1 where opd_date=$OPD_DATE$ and fee_no=$FEE_NO$ and opd_kind=''E''';

    4 : Result := 'select c.triage_level,c.systolic,c.diastolic,c.pulse,c.temperature,c.data_dt,'+statusSQL('REGDEPT','DEPT')+' AS triagedept,c.weight,'+
                  'c.spo2||''_''||''E''||c.CONSCIOUS_COMA_E||''V''||c.CONSCIOUS_COMA_V||''M''||c.CONSCIOUS_COMA_M as alltrage,SUBSTR(TRIM(DATA_OP),16) AS tragenu,'+
                  'a.fee_no from reg_basic a '+
                  'join '+TRIAGETABLENAME+' c on c.id_no=a.id_no  where fee_no in('+patlissql+
                  ') and trim(c.arrival_date)||substr(trim(c.arrival_time),1,4) between to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')-40/24/60,''YYYYMMDDHH24MI'')'+
                  ' and to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')+40/24/60,''YYYYMMDDHH24MI'')';
    {
                  'select c.triage_level,c.systolic,c.diastolic,c.pulse,c.temperature,c.data_dt,'+statusSQL('REGDEPT','DEPT')+' AS triagedept,c.weight,'+
                  'c.spo2||''_''||''E''||c.CONSCIOUS_COMA_E||''V''||c.CONSCIOUS_COMA_V||''M''||c.CONSCIOUS_COMA_M as alltrage,SUBSTR(TRIM(DATA_OP),16) AS tragenu,'+
                  'a.fee_no from reg_basic a '+
                  'join opd_basic b on a.opd_date = b.opd_date and a.fee_no = b.fee_no '+
                  'join '+TRIAGETABLENAME+' c on c.id_no=a.id_no '+qstr+
                  ' c.id_no=a.id_no and a.OPD_KIND=''E'' and a.cncl_flag=''N'' and trim(c.arrival_date)||substr(trim(c.arrival_time),1,4) between to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')-40/24/60,''YYYYMMDDHH24MI'')'+
                  ' and to_char(to_date(trim(a.reg_date)+19110000||trim(a.rsv_opd_time),''YYYYMMDDHH24MI'')+40/24/60,''YYYYMMDDHH24MI'')';}
  end;
end;

function getMAJOR_sql(seq : integer): string;
begin
  case seq of                                                          //  and cncl_flag=''N''
    0: Result := 'select * from MAJOR_INJURIES_DTL where fee_no=$FEE_NO$ AND START_DATE>= $STATRDATE$';//'select * from er_status where fee_no=$fee_no$ and trim(status) = ''9''';
    1: result := 'select * from MAJOR_INJURIES ';
    2: result := 'select MAX(SEQ_NO) AS SEQ_NO from MAJOR_INJURIES_DTL where fee_no=$FEE_NO$ ';
    3: Result := 'select * from MAJOR_INJURIES where kind =$kind$ and leve_no >= $leve_no$';
    4: Result := 'select sum(limit_time) as limit_time from MAJOR_INJURIES where KIND=$kind$ and limit_time<>9999 and Leve_no<> 1 and leve_no <= $leve_no$';
    5: Result := 'insert into major_injuries_dtl(SEQ_NO,KIND,FEE_NO,MAJOR_NO,MAJOR_NAME,START_DATE,START_TIME,END_DATE,END_TIME,TIME_SUM,DOC_CODE,START_FLAG,NOTE,OCCUR_DATE,OCCUR_TIME)'+
                 ' VALUES($SEQ_NO$,$KIND$,$FEE_NO$,$MAJOR_NO$,$MAJOR_NAME$,$START_DATE$,$START_TIME$,$END_DATE$,$END_TIME$,$TIME_SUM$,$DOC_CODE$,$START_FLAG$,$NOTE$,$OCCUR_DATE$,$OCCUR_TIME$)';
    6: Result := 'select * from MAJOR_INJURIES_DTL where fee_no=$FEE_NO$ and kind=''C'' and major_no=''3'' and major_name=''Trauma'' ';
    7: Result := 'update major_injuries_dtl set START_DATE=$START_DATE$,START_TIME=$START_TIME$,END_DATE=$END_DATE$,END_TIME=$END_TIME$,TIME_SUM=$TIME_SUM$,DOC_CODE=$DOC_CODE$,'+
                 'START_FLAG=$START_FLAG$,NOTE=$NOTE$,OCCUR_DATE=$OCCUR_DATE$,OCCUR_TIME=$OCCUR_TIME$ where fee_no=$FEE_NO$ and kind=$KIND$ and major_no=$MAJOR$ and major_name=$MAJORNAME$ ';
    8: result := 'delete MAJOR_INJURIES_DTL where fee_no=$FEE_NO$' ;
    9: Result := 'insert into MAJOR_log(SEQ_NO,KIND,FEE_NO,M_NO,MAJOR_NAME,START_DATE,START_TIME,TIME_SUM,DOC_CODE,CNCL_FLAG,NOTE)'+
                 ' VALUES($SEQ_NO$,$KIND$,$FEE_NO$,$M_NO$,$MAJOR_NAME$,$START_DATE$,$START_TIME$,$TIME_SUM$,$DOC_CODE$,$CNCL_FLAG$,$NOTE$)';
   10: Result := 'select MAX(SEQ) AS SEQ_NO from getmajortime where fee_no=$FEE_NO$';
   11: Result := 'select * from getmajortime where fee_no=$FEE_NO$ and time_type=$TIME_TYPE$';
   12: Result := 'insert into getmajortime(SEQ,CHR_NO,FEE_NO,TIME_TYPE,RECORD_DATE,RECORD_TIME,DOC_CODE) '+
                 'VALUES($SEQ$,$CHR_NO$,$FEE_NO$,$TIME_TYPE$,$RECORD_DATE$,$RECORD_TIME$,$DOC_CODE$)';
   13: Result := 'UPDATE getmajortime SET RECORD_DATE=$RECORD_DATE$,RECORD_TIME=$RECORD_TIME$ WHERE FEE_no=$FEE_NO$ and TIME_TYPE=$TIME_TYPE$ and SEQ=$SEQ$';
   14: Result := 'INSERT INTO Major_Emr(Fee_No, Kind, Doc_Code, Pdf_Flag, Pdf_Date, Pdf_Time, Requestdocno)'+
                 ' VALUES ($FEE_NO$, $KIND$, $DOC_CODE$, ''N'', '''', '''', '''')';


  end;
end;

function getlog_sql(seq: integer): string;
begin
  case seq of                                                                         
    0: Result := 'select * from er_status where fee_no=$fee_no$ and trim(status) = ''9'' and upd_date >= (to_char(add_months(sysdate,-24),''yyyymmdd'')-19110000) and CNCL_FLAG=''N'' ';

    1: Result := 'select fee_no,status,ill_no,leve_seq,leve_no,note,upd_date,upd_time,to_char(s_date,''YYYYMMDDHH24MISS'') as s_date,kind,to_char(n_date,''YYYYMMDDHH24MISS'') as n_date,'+
                 'limit_tatol,limit_time,ill_name,seq_no,cncl_flag from er_status where fee_no=$fee_no$ AND CNCL_FLAG=''N'' and trim(status)=$status$';
    2: Result := 'delete er_status where fee_no=$fee_no$';
    3: Result := 'update er_status set CNCL_FLAG =$CNCL_FLAG$,N_DATE=$N_DATE$ where fee_no=$fee_no$ and seq_no=$SEQ_NO$ and ill_name =$ILL_NAME$';
    4: Result := 'insert into er_status(FEE_NO,STATUS,ILL_NO,LEVE_SEQ,LEVE_NO,NOTE,UPD_DATE,UPD_TIME,S_DATE,kind,LIMIT_TATOL,LIMIT_TIME,ill_name,SEQ_NO,CNCL_FLAG,s_subdate)'+
                 ' VALUES($FEE_NO$,$STATUS$,$ILL_NO$,$LEVE_SEQ$,$LEVE_NO$,$NOTE$,$UPD_DATE$,$UPD_TIME$,$S_DATE$,$kind$,$LIMIT_TATOL$,$LIMIT_TIME$,$ILL_NAME$,$SEQ_NO$,$CNCL_FLAG$,$S_SUBDATE$)';
    5://記錄錯誤訊息                                                                                          // ,$N_DATE$ ,N_DATE
       Result := 'INSERT INTO USE_OPD_LOG(FEE_NO,SOURCE_TYPE,COMPUTER_NAME,COMPUTER_IP,UPD_OPER,UPD_DATE,UPD_TIME,VERSION,COLUMN1) '+
                 'VALUES($FEE_NO$,$SOURCE_TYPE$,$COMPUTER_NAME$,$COMPUTER_IP$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$VERSION$,$COLUMN1$)';
    6://指標時間紀錄主檔
       Result := 'select * from epd_timetype_bas where TYPE_NAME=$TYPE_NAME$ and TIME_START=''Y'' ';
      //指標時間紀錄
    7: Result := 'select * from epd_timelog where fee_no=$fee_no$ and TIME_TYPE=$TIME_TYPE$ and Seq_no=$Seq_no$';

    8://新增指標時間紀錄
      Result := 'insert into epd_timelog(FEE_NO,TIME_TYPE,SEQ_NO,CNCL_FLAG,LOG_OPER,LOG_DATE,LOG_TIME,DATE_TIME,SOURCE_MEMO,CLASS_AID,SOURCE_TYPE)'+
                 ' VALUES($FEE_NO$,$TIME_TYPE$,$SEQ_NO$,$CNCL_FLAG$,$LOG_OPER$,$LOG_DATE$,$LOG_TIME$,$DATE_TIME$,$SOURCE_MEMO$,$CLASS_AID$,''E'')';
      //修改指標時間紀錄
    9: Result := 'update epd_timelog set SEQ_NO=$SEQ_NO$,CNCL_FLAG=$CNCL_FLAG$,LOG_OPER=$LOG_OPER$,LOG_DATE=$LOG_DATE$,LOG_TIME=$LOG_TIME$,'+
                 'DATE_TIME=$DATE_TIME$,SOURCE_MEMO=$SOURCE_MEMO$,CLASS_AID=$CLASS_AID$'+
                 ' where fee_no=$fee_no$ and TIME_TYPE=$TIME_TYPE$ and log_date >='+Qt(Minus_six_months_date);
    10: Result := 'select  MAX(SEQ_NO) AS SEQ_NO from er_status where fee_no=$fee_no$ and trim(status) =$status$';
    11: Result := 'select max(seq_no) as seq_no from epd_timelog ';
    12: Result := 'select * from epd_timelog where fee_no=$FEE_NO$ AND TIME_TYPE=$TIME_TYPE$ and log_date >='+Qt(Minus_six_months_date);
    13: Result := 'delete er_status where fee_no=$fee_no$ and status=''9'' ';
    14: result := 'update epd_timelog set CNCL_FLAG=''Y'',LOG_OPER=$LOG_OPER$,LOG_DATE=$LOG_DATE$,LOG_TIME=$LOG_TIME$ where fee_no=$fee_no$ and TIME_TYPE in($TIME_TYPE$) ';
    15: Result := 'select * from epd_timetype_bas where type_name IN ($TYPE_NAME$) ';
        //24、48、72小時回診
    16: Result := 'select a.fee_no,a.end_date,a.end_time from epd_his a join reg_basic on '+
                  'reg_basic.opd_date = a.epd_date and reg_basic.fee_no=a.fee_no and reg_basic.cncl_flag=''N'' '+
                  'where a.end_date between $SDATE$ and $NDATE$ and (a.reg_date||a.reg_time)<$REGDATE$ and a.fee_no<>$FEE_NO$ and a.chr_no=$CHR_NO$ ORDER BY A.END_DATE DESC';

    //16: Result := 'select * from epd_his where end_date between $SDATE$ and $NDATE$ and fee_no<>$FEE_NO$ and chr_no=$CHR_NO$';
    17: Result := 'SELECT * FROM IPD_BASIC WHERE ipd_flag=''C'' and CHR_NO=$CHR_NO$ and cpd_date between $SDATE$ and $NDATE$';
       //er_lock
    18: Result := 'select * from er_lock where fee_no=$FEE_NO$ and sys_type=$SYS_TYPE$';
    19: Result := 'INSERT INTO er_lock(OPD_DATE,DOC_CODE,CHR_NO,FEE_NO,LOCK_FLAG,UPD_DATE,UPD_TIME,IPADDRESS,COMPUTERNAME,SYS_TYPE)'+
                  ' VALUES($OPD_DATE$,$DOC_CODE$,$CHR_NO$,$FEE_NO$,$LOCK_FLAG$,$UPD_DATE$,$UPD_TIME$,$IPADDRESS$,$COMPUTERNAME$,$SYS_TYPE$)';
    20: Result := 'DELETE er_lock where fee_no=$FEE_NO$ AND DOC_CODE=$DOC_CODE$';
    21: Result := 'insert into NIHSS_LOG(FEE_NO,CHR_NO,SEQ_NO,OPD_DATE,AWARENESS,ANSWER,COMPLY,GAZE,VISION,FACIAL_PALSY,RIGHTARM,RIGHTARM_DESC,LEFTARM,'+
                  'LEFTARM_DESC,RIGHTLEG,RIGHTLEG_DESC,LEFTLEG,LEFTLEG_DESC,ATAXIA,ATAXIA_DESC,TOTAL,FEELING,LANGUAGE_SKILLS,'+
                  'DYSARTHRIA,DYSARTHRIA_DESC,ATTENTION_LOSS,DOC_CODE,UPD_DATE,UPD_TIME,CNCL_FLAG,CHK_POINT)'+
                  ' values($FEE_NO$,$CHR_NO$,$SEQ_NO$,$OPD_DATE$,$AWARENESS$,$ANSWER$,$COMPLY$,$GAZE$,$VISION$,$FACIAL_PALSY$,$RIGHTARM$,$RIGHTARM_DESC$,$LEFTARM$,'+
                  '$LEFTARM_DESC$,$RIGHTLEG$,$RIGHTLEG_DESC$,$LEFTLEG$,$LEFTLEG_DESC$,$ATAXIA$,$ATAXIA_DESC$,$TOTAL$,$FEELING$,$LANGUAGE_SKILLS$,'+
                  '$DYSARTHRIA$,$DYSARTHRIA_DESC$,$ATTENTION_LOSS$,$DOC_CODE$,$UPD_DATE$,$UPD_TIME$,$CNCL_FLAG$,$CHK_POINT$)';
    22: Result := 'select * from NIHSS_LOG where fee_no=$FEE_NO$ and CHK_POINT=$CHK_POINT$ and cncl_flag=''N''';
    23: Result := 'select nvl(max(seq_no),0)as a from nihss_log where fee_no=$FEE_NO$';
    24: Result := 'update nihss_log set cncl_flag=''Y'',doc_code=$DOC_CODE$,upd_date=$UPD_DATE$,upd_time=$UPD_TIME$ where fee_no=$FEE_NO$ and chk_point=$CHK_POINT$ and cncl_flag=''N'' ';
    25: Result := 'INSERT INTO MED_TREATM_PROVEDLOG(OPD_DATE,CHR_NO,FEE_NO,UPD_OPER,UPD_DATE,UPD_TIME) '+
                  'VALUES($OPD_DATE$,$CHR_NO$,$FEE_NO$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$)';
    26: Result := 'select * from EPDEXITBK_LOG where fee_no=$FEE_NO$ and type_M=''01'' and type_d=''04''';
    27: Result := 'DELETE er_lock where DOC_CODE=$DOC_CODE$';
  end;
end;

function getPreOrderSql(s_no:integer):string;
var
  tmpstr:string;
begin
  tmpstr:='';
  case s_no of
    1:
    begin
      tmpstr:=' Select OrderItem_basic.*,(select Code_oneName from COMPARE_CODE_BASIC where IPD_RELATED=''C1'' and RTrim(Code_one) = RTrim(Send_Cd_1)) "檢查室" ';
      tmpstr:=tmpstr+',CASE WHEN (SELECT URG_FLAG FROM FEE_SCHE B WHERE OrderItem_basic.FEE_CODE=B.FEE_CODE)=''Y'' then ''Y'' ELSE URG_FLAG END AS "URG_FLAG_SCHE" ';
      tmpstr:=tmpstr+'from OrderItem_Basic where Fee_code=$FEE_CODE$ And ORDER_TYPE =$ORDER_TYPE$ And USE_STATUS=''1''';
    end;                                                                                              //USE_STATUS_O
    2:
    begin
      tmpstr:=' Select Send_cd_1 "組別",Send_cd_2 "檢體",Fee_code "院內代碼",Fee_name "項目名稱",Send_cd_3 "項目代碼" from ORDERITEM_BASIC Where ORDER_TYPE=''L'' And USE_STATUS=''1'' ';
    end;                                                                                                                                                              //USE_STATUS_O
    3:
    begin
      tmpstr:='SELECT group_code,group_name,decode((select distinct group_code from ORDER_GRP_TEXT where order_type in(''F1'',''F2'',''F3'',''F4'',''F5'',''F6'',''F7'',''F8'',''F9'') '+
              'and dept_code=order_grp_basic.dept_code and user_id = order_grp_basic.user_id '+
              'and group_code = order_grp_basic.group_code ),'''',''套餐'',''病歷首頁範本'') as clas  '+
              'FROM ORDER_GRP_BASIC where user_id=$User_id$ and dept_code $dept_code$ order by group_name';
    end;
    4:
    begin
      tmpstr:=' Select Fee_name "檢查名稱",Fee_code "院內代碼", Send_Cd_1 "檢查室" from ORDERITEM_BASIC Where ORDER_TYPE=''E'' And USE_STATUS=''1'' ';
    end;                                                                                                                           //USE_STATUS_O
    5:
    begin
      tmpstr:=' Select Code_one,code_onename from COMPARE_CODE_BASIC where IPD_RELATED=''R1'' ';
    end;
    6:
    begin
      tmpstr:=tmpstr+' Select ORDER_TYPE,(select code_onename from COMPARE_CODE_BASIC where IPD_RELATED=''R1'' And RTrim(Code_one)=RTrim(Order_type)) "類型", '+#13;
      tmpstr:=tmpstr+' FEE_CODE "院內代碼",FEE_NAME "項目名稱", SEND_CD_1,(select code_onename from COMPARE_CODE_BASIC where IPD_RELATED=''R2'' And Code_Two=Order_type and Code_one=Send_cd_1) "部位", SEND_CD_2 "流水號" ' +#13;
      tmpstr:=tmpstr+' from ORDERITEM_BASIC Where ORDER_TYPE IN (SELECT RTrim(CODE_ONE) FROM COMPARE_CODE_BASIC WHERE IPD_RELATED=''R1'')'+' And USE_STATUS=''1'' ';
    end;                                                                                                                                        //USE_STATUS_O
    7:
    begin
      tmpstr:=' Order By ORDER_TYPE,FEE_CODE,SEND_CD_1,Fee_name ';
    end;
    8:
    begin
      tmpstr:=' Select * from COMPARE_CODE_BASIC where IPD_RELATED=''R2'' and Code_Two=''$CODE_TWO$'' ';
    end;
    9:
    begin
      tmpstr:=' select fee_code "代碼",fee_desc "醫囑內容" from orderitem_basic where fee_code between ''$FEE_CODE1$'' and ''$FEE_CODE2$'' and use_status=''1'' order by fee_code ';
    end;                                                                                                                                       //USE_STATUS_O
    10:
    begin
      tmpstr:='select * from chinese_med where med_code =$med_code$' ;
    end;
    11:
    begin       //ICD9
       tmpstr :='SELECT ICD9_CODE,CHN_FULL_DESC,ENG_FULL_DESC,CHN_SIMP_DESC,ENG_SIMP_DESC,urg_flag,slow_flag,inf_flag '+
                'FROM ICD9_BASIC  '+
                'WHERE SUBSTR(ENG_FULL_DESC,1,1)<>''*''  ';
    end;
    12:
    begin       //fee
       tmpstr :='select fee_code,fee_name,unit_qty,ins_flag,INS_PAY_UAMT,SELF_PAY_UAMT from orderitem_basic '+
                'where order_type=''F'' and use_status =''1'' ';
    end;                                    //USE_STATUS_O
    13:
    begin       //Mtrl
       tmpstr :='select fee_code,fee_name,unit_qty,ins_flag,INS_PAY_UAMT,SELF_PAY_UAMT from orderitem_basic '+
                'where order_type=''S'' and use_status =''1'' ';
    end;                                    //USE_STATUS_O
    14:
    begin                                                         //and sort_type in (''0'',''1'')
       tmpstr :='select * from cir_basic where cir_code=$cir_code$ order by cir_code';
    end;
    15:
    begin
      tmpstr:='SELECT group_code,group_name FROM ORDER_GRP_BASIC where user_id=$User_id$ and dept_code=$dept_code$ ';
    end;
    16:
    begin       //ICD10
       tmpstr :='SELECT ICD_CODE AS ICD9_CODE,CHN_FULL_DESC,ENG_FULL_DESC,CHN_SIMP_DESC,ENG_SIMP_DESC,urg_flag,slow_flag,inf_flag '+
                'FROM ICD_CODE_BASIC';
    end;
  end;
  Result:=tmpstr;
end;

function sql_str(seq : integer): String;
begin
  case seq of
    1:
       Result := 'Select * from OrderItem_basic where Trim(order_type)=''M'' and use_status_O in(''1'',''2'') ';//
    2:
       Result := 'SELECT ICD9_CODE,CHN_FULL_DESC,ENG_FULL_DESC,CHN_SIMP_DESC,ENG_SIMP_DESC,urg_flag,slow_flag '+
                 'FROM ICD9_BASIC  '+                    //  AND FINAL_FLAG=''Y''
                 'WHERE SUBSTR(ENG_FULL_DESC,1,1)<>''*'' and op_flag=''N'' ';
    3:
       Result := 'Select a.pat_name,a.chr_no,a.epd_bed,b.id_no,b.ac_type,b.birth_date,b.sex_type,b.cont_name,b.cont_tel_no,'+
                 '(select opd_date+19110000||''_''||rsv_opd_time from reg_basic d where a.opd_date=d.opd_date and a.fee_no=d.fee_no) as arrival_date '+
                 'from opd_basic a,chr_basic b '+
                 'where fee_no=$FEE_NO$ and opd_date=$OPD_DATE$ and a.chr_no=b.chr_no';
   23:
       Result := 'select arrival_date||''_''||c.arrival_time as arrival_date from '+TRIAGETABLENAME+' where id_no=$ID$ ';
                                               //and opd_date=$opd_date$ and chr_no=$chr_no$
    4:
       Result :='select * from opd_basic1 where fee_no=$fee_no$ ';
    5: //insert opd_basic1
       Result :='insert into opd_basic1(OPD_KIND,OPD_DATE,DEPT_CODE,SHIFT_NO,DEPT_ROOM,DOC_CODE,SEQ_NO,CHR_NO,FEE_NO,PAT_ID,INS_SEQ_NO,PROG_FLAG,ICD9_CODE1'+
                ',ICD9_CODE2,ICD9_CODE3,ICD9_CODE4,ICD9_CODE5,ICD9_DESC1,ICD9_DESC2,ICD9_DESC3,ICD9_DESC4,ICD9_DESC5,PROJECT_TYPE,CASE_TYPE'+
                ',MED_DAYS,DIAG_FLAG,PAT_NAME,NOTE1,NOTE2,UPD_OPER,UPD_DATE,UPD_TIME,UPD_IP,DISC_CODE,PART_CODE,MED_TYPE,MED_NO'+
                ',ORDER_FLAG,LAB_FLAG,PRINT_FLAG,VOTE_TYPE,EXE_DOC,INS_DOC,FEAT_DOC,FEE_CONTEN,ICD9_CODE6,ICD9_CODE7,ICD9_CODE8'+
                ',ICD9_CODE9,ICD9_CODE10,ICD10_CODE1,ICD10_CODE2,ICD10_CODE3,ICD10_CODE4,ICD10_CODE5,ICD9_DESC6,ICD9_DESC7,ICD9_DESC8,ICD9_DESC9,ICD9_DESC10,H,PE,PAIN_SCORE,PAY_TYPE,first_date,first_ins_seq_no,TRIAGE_LEVEL) '+
                ' VALUES (:OPD_KIND,:OPD_DATE,:DEPT_CODE,:SHIFT_NO,:DEPT_ROOM,:DOC_CODE,:SEQ_NO,:CHR_NO,:FEE_NO,:PAT_ID,:INS_SEQ_NO,:PROG_FLAG,:ICD9_CODEa'+
                ',:ICD9_CODE1,:ICD9_CODE2,:ICD9_CODE3,:ICD9_CODE4,:ICD9_DESCa,:ICD9_DESC1,:ICD9_DESC2,:ICD9_DESC3,:ICD9_DESC4,:PROJECT_TYPE,:CASE_TYPE'+
                ',:MED_DAYS,:DIAG_FLAG,:PAT_NAME,:NOTE1,:NOTE2,:UPD_OPER,:UPD_DATE,:UPD_TIME,:UPD_IP,:DISC_CODE,:PART_CODE,:MED_TYPE,:MED_NO'+
                ',:ORDER_FLAG,:LAB_FLAG,:PRINT_FLAG,:VOTE_TYPE,:EXE_DOC,:INS_DOC,:FEAT_DOC,:FEE_CONTEN,:ICD9_CODE5,:ICD9_CODE6,:ICD9_CODE7'+
                ',:ICD9_CODE8,:ICD9_CODE9,:ICD10_CODE1,:ICD10_CODE2,:ICD10_CODE3,:ICD10_CODE4,:ICD10_CODE5,:ICD9_DESC5,:ICD9_DESC6,:ICD9_DESC7,:ICD9_DESC8,:ICD9_DESC9,:Hx,:PE,:PAIN_SCORE,:PAY_TYPE,:first_date,:first_ins_seq_no,:TRIAGE_LEVEL)';


    6: //取最大值
       Result :='select max((select substr(max(sheeT_no),8,3) from epd_all_order a where a.fee_no=c.fee_no and order_date=c.opd_date)) as all_sheet_no,'+
                'max((select max(to_number(seq)) from epd_all_order a where a.fee_no=c.fee_no and order_date=c.opd_date)) as all_seq,'+
                'max((select max(nvl(substr(SHEET_NO,10,4),0)) from EPD_SHEET g where g.fee_no= c.fee_no and fee_date=c.opd_date)) as epd_sheet_no,'+
                'max((select max(nvl(SEQ_NO,0)) from EPD_RECORD K where k.fee_no= c.fee_no and order_date=c.opd_date)) AS RECORD_SEQ_no,'+
                'max((select max(nvl(allorder_no,0)) from EPD_RECORD K where k.fee_no= c.fee_no and order_date=c.opd_date)) AS RECORD_no,'+
                'max((select max(to_number(trim(seq_no)))from epd_all_order a where a.fee_no=c.fee_no and order_date=c.opd_date)) as all_seq_no '+
                'from reg_basic c where opd_DATE=:opd_date and FEE_NO=:fee_no';
    7:
       Result :='update Epd_all_order set dc_flag=''Y'', dc_date=$DC_DATE$, dc_time=$DC_TIME$, dc_oper=$DC_OPER$ where fee_no=$FEE_NO$ and order_date=$ORDER_DATE$ and so_flag=$SO_FLAG$ ';
    8:       //刪除XRL
       Result :='update Epd_all_order set dc_flag=''Y'', del_flag=''Y'', dc_date=$DC_DATE$, dc_time=$DC_TIME$, dc_oper=$DC_OPER$ where fee_no=$FEE_NO$ and order_date=$ORDER_DATE$ and so_flag=$SO_FLAG$ and  FEE_CODE =$FEE_CODE$ and order_seq=$SEQ_NO$ and del_flag=''N''';
    9:                                                                                                                                             // seq_no
       Result := 'select * from Epd_all_order where fee_no=$FEE_NO$ and order_date=$ORDER_DATE$ and so_flag=$SO_FLAG$ and  FEE_CODE =$FEE_CODE$ and order_seq =$SEQ_NO$ and del_flag=''N''';
    10:       //insert Epd_all_order
       Result :='Insert into epd_all_order(SHEET_NO,SEQ,ORDER_TEXT,SEQ_NO,FEE_NO,ORDER_DATE,ORDER_TIME,SO_FLAG,FEE_CODE,FEE_NAME,ORDER_DOC,ORDER_TYPE,ORDER_DAYS,'+
                'QTY_NUM,UNIT_DESC,CIR_CODE,PATH_CODE,SELF_PAY_FLAG,URG_FLAG,DC_FLAG,UPD_OPER,UPD_DATE,UPD_TIME,LAB_NO,MEMO_DESC,PROG_FLAG,PRINT_FLAG,ARRG_FLAG,DEL_FLAG,Exper_type,'+
                'Exper_class,Part_code,GRIND_FLAG,PAY_FLAG,TTL_QTY,TRANS_FLAG,PRINT_FLAG_2,ORDER_STATUS,ORDER_SEQ,DC_SHEET_NO,FEE_UNIT,REPRT_STATUS,NUS_OPER,IPD_FLAG,VS_DOC,JOIN_NO)'+
                'Values($SHEET_NO$,$SEQ$,$ORDER_TEXT$,$SEQ_NO$,$FEE_NO$,$ORDER_DATE$,$ORDER_TIME$,$SO_FLAG$,$FEE_CODE$,$FEE_NAME$,$ORDER_DOC$,$ORDER_TYPE$,$ORDER_DAYS$,'+
                '$QTY_NUM$,$UNIT_DESC$,$CIR_CODE$,$PATH_CODE$,$SELF_PAY_FLAG$,$URG_FLAG$,$DC_FLAG$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$LAB_NO$,$MEMO_DESC$,$PROG_FLAG$,$PRINT_FLAG$, '+
                '$ARRG_FLAG$,$DEL_FLAG$,$Exper_type$,$Exper_class$,$Part_code$,$GRIND_FLAG$,$PAY_FLAG$,$TTL_QTY$,'+
                'nvl((select trans_flag from Epd_all_order where order_date=$ORDER_DATE$ and dc_flag=''N'' and del_flag=''N'' and SEQ_NO=$oldSEQ_NO$ and fee_code=$FEE_CODE1$ and fee_no=$FEE_NO1$),''N''),'+
                ' nvl((select PRINT_FLAG_2 from Epd_all_order where order_date=$ORDER_DATE$ and dc_flag=''N'' and del_flag=''N'' and SEQ_NO=$oldSEQ_NO$ and fee_code=$FEE_CODE1$ and fee_no=$FEE_NO1$),''N''),'+
                ' nvl((select ORDER_STATUS from Epd_all_order where order_date=$ORDER_DATE$ and dc_flag=''N'' and del_flag=''N'' and SEQ_NO=$oldSEQ_NO$ and fee_code=$FEE_CODE1$ and fee_no=$FEE_NO1$),''N''),'+
                '$ORDER_SEQ$,$DC_SHEET_NO$,$FEE_UNIT$,$REPRT_STATUS$,$NUS_OPER$,$IPD_FLAG$,$VS_DOC$,$JOIN_NO$ )';
    11:
       Result :='select * from v_weight where chr_no=$CHR_NO$ order by upd_date_time desc';
    12:
       Result :=' select  user_type,TITLE,MEMO,seq_NO,max(seq_NO1),SOURCE_TYPE from (select c.user_type,  '+
                'decode(c.source_type, ''O'', ''門診:'',  ''I'', ''出院帶藥:'') TITLE,  '+
                'TRIM(M.Med_Eng_Desc) || '' ('' || TRIM(M.ALISE_DESC) || '')''  || '+
							  '(To_Char(c.Per_Qty, ''9990.09'')) || '' '' ||      '+
							  'TRIM(c.Unit_Desc) || '' '' || TRIM(c.Cir_Code) || '' '' ||  '+
							  'TRIM(c.Path_Code) Memo, '+
                'C.seq_NO,C.seq_NO1, '+
                'c.SOURCE_TYPE '+
                'from shh_med_history c, Med_Basic M '+
                'where fee_NO =$FEE_NO$ '+
                'AND C.MED_CODE = M.MED_CODE   '+
                'and c.source_type <>''E''  '+
                'AND M.med_kind <> ''6'' '+
                'UNION  '+
                'select c.user_type, '+
                '''院外用藥:'' TITLE, '+
                'trim(c.out_med_desc) || ''('' || trim(c.out_alise_desc) || '') '' MEMO, '+
                'C.seq_NO, C.seq_NO1,  C.SOURCE_TYPE '+
                'from shh_out_med_history c  '+
                'where c.fee_no = $FEE_NO$ ) '+
                'group by user_type,TITLE,MEMO,MEMO,seq_NO,SOURCE_TYPE '+
                'order by  seq_NO,max(seq_NO1)';
    13://取離院方式
       Result :='select * from code_dtl where code_type=$CODE_DTL$ ';
    14:
       Result :='Update OPD_BASIC1 set MED_NO=$med_no$,CASE_TYPE=$case_type$,PART_CODE=$part_code$,MED_DAYS=$med_days$,ICD9_CODE1=$icd9_code1$,'+
                'ICD9_CODE2=$ICD9_CODE2$,ICD9_CODE3=$ICD9_CODE3$,ICD9_CODE4=$ICD9_CODE4$,ICD9_CODE5=$ICD9_CODE5$,ICD9_CODE6=$ICD9_CODE6$,ICD9_CODE7=$ICD9_CODE7$,'+
                'ICD9_CODE8=$ICD9_CODE8$,ICD9_CODE9=$ICD9_CODE9$,ICD9_CODE10=$ICD9_CODE10$,ICD9_DESC1=$ICD9_DESC1$,ICD9_DESC2=$ICD9_DESC2$,ICD9_DESC3=$ICD9_DESC3$,'+
                'ICD9_DESC4=$ICD9_DESC4$,ICD9_DESC5=$ICD9_DESC5$,ICD9_DESC6=$ICD9_DESC6$,ICD9_DESC7=$ICD9_DESC7$,ICD9_DESC8=$ICD9_DESC8$,ICD9_DESC9=$ICD9_DESC9$,ICD9_DESC10=$ICD9_DESC10$,'+
                'NOTE1=$NOTE1$,NOTE2=$NOTE2$,DIAG_FLAG=$DIAG_FLAG$,VOTE_TYPE=$VOTE_TYPE$,FEE_CONTEN=$FEE_CONTEN$,UPD_OPER=$UPD_OPER$,UPD_DATE=$UPD_DATE$,'+
                'UPD_TIME=$UPD_TIME$,H=$hx$,PAIN_SCORE=$PAIN_SCORE$,PAY_TYPE=$PAY_TYPE$,first_date=$first_date$,first_ins_seq_no=$first_ins_seq_no$,INS_SEQ_NO=$INS_SEQ_NO$,TRIAGE_LEVEL=$TRIAGE_LEVEL$,'+
                'EXE_DOC=$EXE_DOC$,INS_DOC=$INS_DOC$,DOC_CODE=$DOC_CODE$ Where OPD_DATE=$opd_date$ and fee_no=$fee_no$';
    15:          //PRINT_FLAG=$PRINT_FLAG$,
       Result :='insert into opd_basic1(OPD_KIND,OPD_DATE,DEPT_CODE,SHIFT_NO,PRINT_FLAG,DEPT_ROOM,DOC_CODE,SEQ_NO,CHR_NO,FEE_NO,PAT_ID,PROG_FLAG,ICD9_CODE1,TRIAGE_LEVEL,EPD_BED,EPD_AREA) '+
                'VALUES($OPD_KIND$,$OPD_DATE$,$DEPT_CODE$,$SHIFT_NO$,$PRINT_FLAG$,$DEPT_ROOM$,$DOC_CODE$,$SEQ_NO$,$CHR_NO$,$FEE_NO$,$PAT_ID$,$PROG_FLAG$,$ICD9_CODE1$,$TRIAGE_LEVEL$,$EPD_BED$,$EPD_AREA$)';
    16://沒有使用
       Result :='Update OPD_BASIC1 set EPD_BED=$EPD_BED$,EPD_AREA=$EPD_AREA$ Where fee_no=$FEE_NO$';
    17:                                                           //  opd_date =$opd_date$ and
       result :='update reg_basic set opd_status=$OPD_STATUS$ where  fee_no=$FEE_NO$';
    18:
       result :='select * from chr_basic where chr_no=$CHR_NO$';
    19://沒有使用
       Result :='Update OPD_BASIC1 set print_flag=$PRINT_FLAG$ Where fee_no=$FEE_NO$';
    20:
       Result :='select * from Epd_all_order where fee_no=$FEE_NO$ and order_date=$ORDER_DATE$ and so_flag=$SO_FLAG$ and dc_flag=''N'' and del_flag=''N''';
    21:
       Result := 'select * from pain_score where chr_no=$CHR_NO$ and fee_no=$FEE_NO$ and opd_date=$OPD_DATE$ and UPD_OPER=$DOC_CODE$ ' ;
    22:
       Result := 'select fee_code,fee_name,ins_pay_uamt,self_pay_uamt from orderitem_basic where fee_code = $fee_code$ ';
    24:
       Result := 'select fee_code,fee_desc from '+
                 '(select fee_code,fee_desc from fee_basic where ins_fee_code between ''62001C'' and ''88054B'' and length(trim(ins_fee_code))>=6) b '+
                 ' where b.fee_code in($FEECODE$) ';
    25:   //'where fee_no=$FEE_NO$ and opd_date=$OPD_DATE$ and a.chr_no=b.chr_no';
       Result := 'Select a.pat_name,a.chr_no,a.epd_bed,b.id_no,b.ac_type,b.birth_date,b.sex_type,b.cont_name,b.cont_tel_no,'+
                 '(select opd_date+19110000||''_''||rsv_opd_time from reg_basic d where a.opd_date=d.opd_date and a.fee_no=d.fee_no) as arrival_date,'+
                 '(select ''B.H.:''||body_high||''/B.W.:''||Body_weight||''/H.C.:''||head_len as aa from BIO_INFORMATION_LOG where fee_no=a.fee_no and source_kind=''E'' '+
                 'and upd_date||upd_time=(select max(upd_date||upd_time) from bio_information_log where fee_no=a.fee_no and source_kind=''E'' and '+
                 'nvl(trim(body_high),''0'')<>''0'' and nvl(trim(Body_weight),''0'')<>''0'' and nvl(trim(head_len),''0'')<>''0'' and Rownum=1) and Rownum=1) as heat '+
                 'from opd_basic a,chr_basic b '+
                 //'where fee_no=''E51102352'' and opd_date=''1051109'' and a.chr_no=b.chr_no';
                 'where fee_no=$FEE_NO$ and opd_date=$OPD_DATE$ and a.chr_no=b.chr_no';
    26:
       Result := 'select * from pain_score where OPD_DATE=$OPD_DATE$ AND FEE_no=$FEE_NO$ AND sour_ap=''E'' ';
  end;
end;

FUNCTION GETEPDRECORD(SEQ : INTEGER):STRING;
BEGIN
  case SEQ of
    0:
      Result := 'INSERT INTO EPD_RECORD(FEE_NO,KIND,SEQ_NO,TEXT,ORDER_SORT,ALLORDER_NO,UPD_OPER,UPD_DATE,UPD_TIME,VS_CODE,ORDER_DATE,ORDER_TIME,DEL_FLAG)' +
                ' VALUES($FEE_NO$,$KIND$,$SEQ_NO$,$TEXT$,$ORDER_SORT$,$ALLORDER_NO$,$UPD_OPER$,$UPD_DATE$,$UPD_TIME$,$VS_CODE$,$ORDER_DATE$,$ORDER_TIME$,$DEL_FLAG$) ';
    1:
      result := 'SELECT arrival_date,arrival_time,triage_level,CONSCIOUS_COMA_E,CONSCIOUS_COMA_V,CONSCIOUS_COMA_M,weight,'+
                'temperature,pulse,resp,diastolic,systolic,spo2,allergy_none,allergy_unknown,allergy_seafood,allergy_pen,allergy_pyrine,'+
                'allergy_other,preg,illness_hypertension,illness_diabetes,illness_lung,illness_kidney,illness_heart,illness_other,'+
                'illness_other_desc,pain_level,soap,data_op FROM '+TRIAGETABLENAME;
    2:
      Result := 'SELECT arrival_date AS "到院日期",arrival_time AS "到院時間",triage_level AS "檢傷級數",CONSCIOUS_COMA_E AS "意識狀態_E",CONSCIOUS_COMA_V AS "意識狀態_V",'+
                'CONSCIOUS_COMA_M AS "意識狀態_M",weight AS "體重",temperature AS "體溫",pulse AS "脈搏",resp AS "呼吸次數",diastolic AS "舒張壓",systolic AS "收縮壓",'+
                'spo2,allergy_none AS "過敏史:無",allergy_unknown AS "不清楚",allergy_seafood AS "海鮮類食物",allergy_pen AS "盤尼西林",allergy_pyrine AS "Pyrine類藥物",'+
                'allergy_other AS "其他",preg AS "懷孕",illness_hypertension AS "高血壓",illness_diabetes AS "糖尿病",illness_lung AS "肺部疾病",illness_kidney AS "腎臟病",'+
                'illness_heart AS "心臟病",illness_other AS "其他",illness_other_desc AS "說明",pain_level AS "疼痛強度",soap AS "病患主訴",data_op as "檢傷人員",allergy_other_desc, ARRIVAL_WAY_WALK 到院方式119送入,  EPCR1 消防救護編號 '+
                'FROM '+TRIAGETABLENAME+ ' c,reg_basic a where a.id_no=c.id_no AND a.OPD_KIND=''E'' and a.cncl_flag=''N'' and ';
    3:
      Result := 'SELECT * FROM ('+
                'SELECT SEQ,lpad(trim(SEQ_NO),5,''0''),''P_''||SO_FLAG as SO_FLAG,ORDER_TEXT,FEE_CODE,FEE_NAME,ORDER_DOC,ORDER_DAYS,UNIT_DESC,CIR_CODE,PATH_CODE,EXPER_TYPE,EXPER_CLASS,QTY_NUM,SELF_PAY_FLAG,'+
                //'URG_FLAG,DC_FLAG,VS_DOC,upd_date,upd_time,NUS_OPER,TTL_QTY,NUS_DATE,NUS_TIME,Record_print,del_flag,MEMO_DESC,part_code '+
                'URG_FLAG,DC_FLAG,VS_DOC,upd_date,upd_time,NUS_OPER,TTL_QTY,NUS_DATE,NUS_TIME,Record_print,case when del_flag = ''Y'' then case when trim(dc_sheet_no) is null then ''N'' else ''Y'' end else ''N'' end del_flag,MEMO_DESC,part_code '+
                'FROM EPD_ALL_ORDER where fee_no=$FEE_NO$ and order_date=$ORDER_DATE$ '+
                'union all '+
                //'select TO_CHAR(allorder_no),lpad(trim(SEQ_NO),5,''0''),kind,text,'''','''',UPD_OPER,0,'''','''','''','''','''',0,'''','''','''',vs_code,upd_DATE,upd_TIME,'''',0,'''','''','''',del_flag,'''','''' '+
                'select TO_CHAR(allorder_no),lpad(trim(SEQ_NO),5,''0''),kind,text,'''','''',UPD_OPER,0,'''','''','''','''','''',0,'''','''','''',vs_code,upd_DATE,upd_TIME,'''',0,'''','''','''','+
                'case when del_flag = ''Y'' then case when trim(order_sort) <> ''D'' and kind not in (''O_SUBJECT'',''O_OJECT'',''O_HISTORY'',''O_PLAN'') then ''N'' else ''Y'' end else ''N'' end,'''','''' '+
                'from epd_record where fee_no=$FEE_NO$ and kind not in(''FIRST_RECORD'',''FIRST_ITEM'') and order_date=$ORDER_DATE$ ) '+
                ' ORDER BY 2,1';
    4:
      Result := 'UPDATE EPD_RECORD SET DEL_FLAG=''Y'',DEL_DATE=$DEL_DATE$,DEL_TIME=$DEL_TIME$ WHERE FEE_NO=$FEE_NO$ AND order_date=$ORDER_DATE$ and KIND=$KIND$ AND ALLORDER_NO=$ALLORDER_NO$';
    5:
      Result := 'SELECT * FROM ('+
                'SELECT SEQ,lpad(trim(SEQ_NO),5,''0''),''P_''||SO_FLAG as SO_FLAG,ORDER_TEXT,FEE_CODE,FEE_NAME,ORDER_DOC,ORDER_DAYS,UNIT_DESC,CIR_CODE,PATH_CODE,EXPER_TYPE,EXPER_CLASS,QTY_NUM,SELF_PAY_FLAG,'+
                'URG_FLAG,DC_FLAG,VS_DOC,upd_date,upd_time,NUS_OPER,TTL_QTY,NUS_DATE,NUS_TIME,Record_print,del_flag,MEMO_DESC,part_code '+
                'FROM EPD_ALL_ORDER where fee_no=$FEE_NO$ and seq=$SEQ$ AND order_date=$ORDER_DATE$'+
                'union all '+
                'select TO_CHAR(allorder_no),lpad(trim(SEQ_NO),5,''0''),kind,text,'''','''',UPD_OPER,0,'''','''','''','''','''',0,'''','''','''',vs_code,upd_DATE,upd_TIME,'''',0,'''','''','''',del_flag,'''','''' '+
                'from epd_record where fee_no=$FEE_NO$ AND order_date=$ORDER_DATE$ and allorder_no=$ALLORDER$ and kind not in(''FIRST_RECORD'',''FIRST_ITEM''))'+
                ' ORDER BY 2,1';
  end;
END;

function getordergrp(s_no: integer):string;
begin
  case s_no of
    0:
      Result := 'INSERT INTO ORDER_GRP_BASIC(DEPT_CODE,USER_ID,GROUP_CODE,GROUP_NAME)' +
                ' VALUES($DEPT_CODE$,$USER_ID$,$GROUP_CODE$,$GROUP_NAME$) ';
    1:
      Result := 'INSERT INTO ORDER_GRP_DTL(DEPT_CODE,USER_ID,GROUP_CODE,SEQ_NO,FEE_CODE,FEE_NAME,'+
                'ORDER_TYPE,UNIT_QTY,CIR_CODE,PATH_CODE,MED_DAYS,GRIND_FLAG,TTL_QTY,SELF_PAY_FLAG,'+
                'URG_FLAG,DR_NOTE,ITEM_NO,SEND_CD_1,SEND_CD_2,SEND_CD_3,TEXT_KIND,ORDER_DESC) '+
                'VALUES($DEPT_CODE$,$USER_ID$,$GROUP_CODE$,$SEQ_NO$,$FEE_CODE$,$FEE_NAME$,$ORDER_TYPE$'+
                ',$UNIT_QTY$,$CIR_CODE$,$PATH_CODE$,$MED_DAYS$,$GRIND_FLAG$,$TTL_QTY$,$SELF_PAY_FLAG$,$URG_FLAG$,'+
                '$DR_NOTE$,$ITEM_NO$,$SEND_CD_1$,$SEND_CD_2$,$SEND_CD_3$,$TEXT_KIND$,$ORDER_DESC$)';
    2:
      Result := 'INSERT INTO ORDER_GRP_TEXT(DEPT_CODE,USER_ID,GROUP_CODE,SEQ_NO,ORDER_TEXT,ORDER_TYPE,TEXT_KIND) '+
                'VALUES($DEPT_CODE$,$USER_ID$,$GROUP_CODE$,$SEQ_NO$,$ORDER_TEXT$,$ORDER_TYPE$,$TEXT_KIND$)';
    3:
      Result := 'DELETE ORDER_GRP_BASIC WHERE DEPT_CODE=$DEPT_CODE$ AND USER_ID=$USER_ID$ And GROUP_CODE=$GROUP_CODE$';
    4:
      Result := 'DELETE ORDER_GRP_DTL WHERE DEPT_CODE=$DEPT_CODE$ AND USER_ID=$USER_ID$ And GROUP_CODE=$GROUP_CODE$';
    5:
      Result := 'DELETE FROM ORDER_GRP_TEXT WHERE DEPT_CODE=$DEPT_CODE$ AND USER_ID=$USER_ID$ And GROUP_CODE=$GROUP_CODE$';
  end;
end;

function Lv_dg(seq: integer):string;
begin
  case seq of
    0:
      Result := 'select * from leave_diag where fee_no=$FEE_NO$ and cncl_flag=''N'' AND ORDER_DATE=$ORDERDATE$';
    1:
      Result := 'update leave_diag set cncl_flag=''Y'',upd_date=$UPD_DATE$,upd_time=$UPD_TIME$,upd_oper=$UPD_OPER$ '+
                'where fee_no=$FEE_NO$ and lot_no=$LOT_NO$ AND ORDER_DATE=$EPDDATE$';
    2:
      Result := 'insert into leave_diag(fee_no,lot_no,seq_no,kind_no,text_desc,cncl_flag,order_date,order_time,doc_code,upd_date,upd_time,upd_oper) '+
                'values($FEE_NO$,$LOT_NO$,$SEQ_NO$,$KIND_NO$,$TEXT_DESC$,$CNCL_FLAG$,$ORDER_DATE$,$ORDER_TIME$,$DOC_CODE$,$UPD_DATE$,$UPD_TIME$,$UPD_OPER$)';
    3:
      Result := 'select MAX(LOT_NO) AS LOTNO,MAX(SEQ_NO) AS SEQNO from leave_diag where fee_no=$FEE_NO$ AND ORDER_DATE=$EPDDATE$';
  end;
end;

function getSpSql(SpNo:Integer;var Paramter,PType,RType:TStrings):string;
begin
  case (SpNo) of
    0:
    begin
      Paramter.Add('as_fee_no');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_fee_code');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_opd_date');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_seq_no');
      PType.Add('1');
      RType.Add('1');
      Result:='pk_broker.p_fee_broker';
    end;
    1:
    begin
      Paramter.Add('av_fee_no');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_time_type');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_source_memo');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_log_oper');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_log_date');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_log_time');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_vsdoc');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_rtn_date');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('av_rtn_time');
      PType.Add('1');
      RType.Add('2');
      Result:='PK_ER.p_epd_timelog';
    end;
    2:
    begin
      Paramter.Add('As_Fee_No');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('As_Seq');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('As_Rtn_Code');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('As_Rtn_Msg');
      PType.Add('1');
      RType.Add('2');
      Result:='PK_OPD_EPD_NURSE.p_EUdOrderLog_Nurse';
    end;
    3:
    begin
      Paramter.Add('as_fee_no');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_chr_no');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_opd_date');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('av_rtn_code');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('av_rtn_mssg');
      PType.Add('1');
      RType.Add('2');
      Result:='sp_lendchr';
    end;
    4:
    begin
      Paramter.Add('as_fee_no');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_seq');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_type');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_rtn_code');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('as_rtn_msg');
      PType.Add('1');
      RType.Add('2');
      Result:='SP_OrderExtend';
    end;
    5:
    begin
      Paramter.Add('Av_Fee_No');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('Av_Nur_Seq');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('As_Rtn_Code');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('As_Rtn_Msg');
      PType.Add('1');
      RType.Add('2');
      Result:='PK_OPD_EPD_NURSE.p_Trans_Epd_nurse';
    end;
    6:
    begin
      Paramter.Add('casetype');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('chrno');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('userid');
      PType.Add('1');
      RType.Add('1');
      Result:='SP_EmergencyPHS';
    end;
    7: //雙向
    begin
      Paramter.Add('ISMSKIND');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('ISENDID');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('IMESSAGE');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('IOPER');
      PType.Add('1');
      RType.Add('1');
      Result:='WFSMS_SEND2';
    end;
    8: //單向
    begin
      Paramter.Add('ISMSKIND');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('ISENDID');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('IMESSAGE');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('IOPER');
      PType.Add('1');
      RType.Add('1');
      Result:='WFSMS_SEND5';
    end;
    9:
    begin
      Paramter.Add('as_doc_code');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_chr_no');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_source_flag');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('as_data_type');
      PType.Add('1');
      RType.Add('1');
      Result:='P_LAB_DATA_LOG';
    end;
    10:
    begin
      Paramter.Add('Av_Fee_No');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('Av_Case_Type');
      PType.Add('1');
      RType.Add('1');
      //109.02.12 shh ITe SP改抓全部時間  不回傳  修正
      {
      Paramter.Add('Av_Rtn_Cons_Date');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('Av_Rtn_Cons_Time');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('Av_Rtn_Odr_Date');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('Av_Rtn_Odr_Time');
      PType.Add('1');
      RType.Add('2');
      }
      Result:='pk_er.p_epd_cons_date';
    end;
    11:
    begin
      Paramter.Add('Av_Fee_No');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('Av_Rtn_Date');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('Av_Rtn_Time');
      PType.Add('1');
      RType.Add('2');
      Result:='pk_er.p_ami_med_date';
    end;
    12:
    begin
      Paramter.Add('As_Fee_No');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('As_Seq');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('As_sheet_no');
      PType.Add('1');
      RType.Add('1');
      Paramter.Add('As_Rtn_Code');
      PType.Add('1');
      RType.Add('2');
      Paramter.Add('As_Rtn_Msg');
      PType.Add('1');
      RType.Add('2');
      Result:='PK_OPD_EPD_NURSE.p_EPD_DC_Nurse';
    end;
    13:
    begin
      Paramter.Add('av_fee_no');
      PType.Add('1');
      RType.Add('1');
      Result:='p_inster_med_history';
    end;
  end;
end;


end.
