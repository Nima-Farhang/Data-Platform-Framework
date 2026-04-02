{{ config(schema='serving', materialized='view') }}

select
    c.customer_id,
    c.customer_name,
    count(o.order_id) as total_orders,
    sum(o.order_amount) as total_order_amount
from {{ ref('dim_customers') }} as c
left join {{ ref('fct_orders') }} as o
    on c.customer_id = o.customer_id
group by
    c.customer_id,
    c.customer_name
