select fee_no,count(exam_no) HRRCnt,count(refkey) ReplyCn 
from (
      (select /*+ use_nl(opd_basic lab) */ opd_basic.fee_no,LAB.exam_no,'' as refkey
         from opd_basic,LAB,LAB_DTL
        where LAB.EXAM_NO = LAB_DTL.EXAM_NO
          AND LAB.WRITE_TIME = LAB_DTL.WRITE_TIME
          and opd_basic.fee_no in (select fee_no from epd_his where fee_no in($FEE_NO$))
          and opd_basic.chr_no = LAB.chr_no
          and LAB.REPORT_DATE = opd_basic.opd_date
          AND LAB_DTL.DANGEROUS_FLAG IN ('T','E'))
      union all
      (select /*+ use_nl(opd_basic lab) */ opd_basic.fee_no,'' as exam_no,wfsms2.refkey
         from opd_basic,LAB,LAB_DTL,wfsms2
        where LAB.EXAM_NO = LAB_DTL.EXAM_NO
          AND LAB.WRITE_TIME = LAB_DTL.WRITE_TIME
          and opd_basic.fee_no in (select fee_no from epd_his where fee_no in($FEE_NO$))
          and opd_basic.chr_no = LAB.chr_no
          and LAB.REPORT_DATE = opd_basic.opd_date
          AND LAB_DTL.DANGEROUS_FLAG IN ('T','E')
          and wfsms2.refkey=trim(LAB.exam_no)||'_'||trim(lab.write_time)||'_'||trim(lab.chr_no))
     )
 group by fee_no