SELECT TRIM(COST_CODE)||'_'||TRIM(COST_DESC) AS COST_CODE
  FROM COST_BASIC
  WHERE COST_TYPE='01' AND COST_FLAG='Y' AND COST_CODE NOT IN('5710','J100')
  union all
  select 'F100_營養室' AS COST_CODE from dual
  union all
  select 'TPN_營養醫療委員會' AS COST_CODE from dual
  union all
  select 'E900_社工室' AS COST_CODE from dual
  union all
  select '7130_臨床藥學組' AS COST_CODE from dual
  union all
  select 'J100_安寧共照' AS COST_CODE from dual
  ORDER BY COST_CODE