select fee_no,count(chr_no) HRRCnt,sum(decode(trim(rcv_date),'',0,1)) ReplyCn
from (
select a.chr_no,b.fee_no,rcv_date from twnsms_content a ,epd_his b 
       where a.rcv_status='1'
         and a.upd_oper in('實診科','放射科')
         and a.odr_date >= to_number(to_char(sysdate-7,'yyyyMMdd'))-19110000
         and a.chr_no=b.chr_no
         and b.fee_no in($FEE_NO$)) a
         group by fee_no