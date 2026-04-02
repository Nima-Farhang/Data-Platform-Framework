{{ config(schema='raw', materialized='view') }}

select
    order_id,
    customer_id,
    order_date,
    order_amount,
    order_status,
    updated_at
from {{ ref('seed_orders') }}
