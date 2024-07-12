{{
  config(
    materialized='view'
  )
}}
select
    region_id, 
	region_description
from {{source("sources","region")}}