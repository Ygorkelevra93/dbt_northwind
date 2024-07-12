{{
  config(
    materialized='view'
  )
}}
SELECT
    shipper_id as ship_via, 
	company_name as transport_company_name
from {{source("sources","shippers")}}