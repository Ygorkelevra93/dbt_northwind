{{
  config(
    materialized='view'
  )
}}

select 
    
    customer_id		as customers_churn_id, 
	company_name 	as customers_churn_name, 
	city 			as customers_churn_city, 
	country 		as customers_churn_country
    
    
from {{source("sources","customers")}}