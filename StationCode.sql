SELECT Cost_code,Cost_desc 
From cost_basic 
where cost_type='02' 
AND Cost_code not in ('8100','8200','8300','8400','8500','8690','8670','872A','8800','8310','8510') 
ORDER BY Cost_code