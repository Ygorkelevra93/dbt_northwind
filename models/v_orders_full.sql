{{
  config(
    materialized='view'
  )
}}


-- Criação de uma tabela temporária para orders com colunas calculadas
WITH orders_temp AS (
    SELECT
        o.order_id,
        o.customer_id,
        o.employee_id,
        o.order_date,
        EXTRACT(YEAR FROM o.order_date) AS ano_venda,
        EXTRACT(MONTH FROM o.order_date) AS mes_venda,
        o.order_date AS data,
        o.required_date,
        o.shipped_date,
        o.ship_via,
        o.freight,
        o.ship_name,
        o.ship_address,
        o.ship_city,
        o.ship_region,
        o.ship_postal_code,
        o.ship_country,
        od.product_id,
        od.unit_price AS unit_price_sales,
        od.quantity,
        (od.unit_price * od.quantity) AS total_nf_sem_desconto,
        ((od.unit_price * od.quantity) - (od.discount * od.quantity)) AS total_nf_liquido,
        od.discount,
        (od.discount * od.quantity) AS total_discount
    FROM {{source("sources","orders")}}  o
    LEFT JOIN
        {{source("sources","order_details")}} od ON o.order_id = od.order_id
),

-- Criação de uma tabela temporária com o custo do produto
products_cost AS (
    SELECT
        p.product_id,
        p.unit_price AS unit_price_costs
    FROM
        {{source("sources","products")}} p
)

-- Seleção final com junção das tabelas temporárias e cálculos finais de margem
SELECT
    ot.*,
    pc.unit_price_costs,
    (pc.unit_price_costs * ot.quantity) AS total_nf_costs,
    (ot.total_nf_liquido - (pc.unit_price_costs * ot.quantity)) AS lucro_venda_final,
    (ot.total_nf_sem_desconto - (pc.unit_price_costs * ot.quantity)) AS lucro_venda_antes_desconto
FROM
    orders_temp ot
LEFT JOIN
    products_cost pc ON ot.product_id = pc.product_id
