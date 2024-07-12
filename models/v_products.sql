{{
  config(
    materialized='view'
  )
}}

select 
    product_id, 
	product_name, 
	supplier_id, 
	category_id, 
	quantity_per_unit, 
	unit_price as unit_price_costs, 
	units_in_stock, 
	units_on_order, 
	reorder_level, 
	discontinued
from {{source("sources","products")}}
