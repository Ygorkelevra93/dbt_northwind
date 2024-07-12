{{
  config(
    materialized='view'
  )
}}

select 
    category_id, 
	category_name, 
	description
from {{source("sources","categories")}}