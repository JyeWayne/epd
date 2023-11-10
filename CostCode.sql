SELECT TRIM(COST_CODE)||'_'||TRIM(COST_DESC) AS COST_CODE
  FROM COST_BASIC
  WHERE COST_TYPE='01' AND COST_FLAG='Y' AND COST_CODE NOT IN('5710','J100')
  union all
  select 'F100_��i��' AS COST_CODE from dual
  union all
  select 'TPN_��i�����e���|' AS COST_CODE from dual
  union all
  select 'E900_���u��' AS COST_CODE from dual
  union all
  select '7130_�{���ľǲ�' AS COST_CODE from dual
  union all
  select 'J100_�w��@��' AS COST_CODE from dual
  ORDER BY COST_CODE