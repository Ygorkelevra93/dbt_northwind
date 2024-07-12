{{
  config(
    materialized='view'
  )
}}
select
    region_id, 
	territory_description, 
	territory_id
from {{source("sources","territories")}}