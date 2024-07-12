{{
  config(
    materialized='view'
  )
}}

select
    supplier_id, 
	company_name as supplier_name, 
	contact_name, 
	contact_title, 
	address, 
	city, 
	region, 
	postal_code, 
	country, 
	--phone, 
	fax
	--homepage
from {{source("sources","suppliers")}}