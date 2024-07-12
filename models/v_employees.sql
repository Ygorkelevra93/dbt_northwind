{{
  config(
    materialized='view'
  )
}}
select    
    employee_id, 
    employee_id as employee_id_territories, 
	last_name, 
	first_name, 
	title, 
	title_of_courtesy, 
	birth_date,
    AGE(NOW(), birth_date) AS employees_age,
    AGE(NOW(), hire_date) AS employees_length_of_service,
    DATE_PART('year', AGE(NOW(), birth_date)) AS employees_age_years,
    DATE_PART('year', AGE(NOW(), hire_date)) AS employees_length_of_service_years,
	address					as employees_address, 
	city 					as employees_city, 
	region 					as employees_region, 
	postal_code 			as employees_postal_code, 
	country 				as employees_country, 
	home_phone 				as employees_home_phone, 
	extension 				as employees_extension, 
	notes 					as employees_notes, 
	reports_to 				as employees_reports_to
from {{source("sources","employees")}}