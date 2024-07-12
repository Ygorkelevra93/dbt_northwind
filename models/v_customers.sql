{{
  config(
    materialized='view'
  )
}}
select
    customer_id, 
	company_name 	as customers_name, 
	contact_name	as customers_contact_name, 
	contact_title	as customers_contact_title, 
	address 		as customers_address, 
	city 			as customers_city, 
	region 			as customers_region, 
	postal_code 	as customers_postal_code, 
	country 		as customers_country, 
	phone 			as customers_phone
from {{source("sources","customers")}}
