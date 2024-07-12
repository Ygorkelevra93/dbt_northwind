{{
  config(
    materialized='view'
  )
}}

select
    employee_id as employee_id_territories, 
	territory_id
from {{source("sources","employee_territories")}}