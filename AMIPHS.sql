select distinct (select phs_no from phs_data where trim(member_code)=DR_CODE) PHS_NO
        from  groupofsche a , groupofleave b ,groupofList c
        Where c.id_code2 in ('68','01')
        and a.id_code1 = c.id_code1 and a.id_code2 = c.id_code2
        and a.dr_code = b.doc_code(+)
        And a.sche_date = b.memodate(+)
        And a.ID_code2 in ('68','01') And Lpad(Trim(a.SCHE_DATE),7,'0') = (to_char(sysdate,''YYYYMMDD'')-19110000)
union select phs_no from phs_data where member_code='88224'
union select phs_no from phs_data where member_code='88011'
union select phs_no from phs_data where member_code='98135'
union select phs_no from phs_data where member_code='94092'
union select phs_no from phs_data where member_code='87456'
union select phs_no from phs_data where member_code='96252'
union select phs_no from phs_data where member_code='92035';