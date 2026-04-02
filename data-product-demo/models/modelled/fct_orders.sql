{{ config(schema='modelled', materialized='table') }}

select
    order_id,
    customer_id,
    order_date,
    order_amount,
    order_status,
    updated_at,
    dbt_loaded_at,
    dbt_environment,
    dbt_invocation_id
from {{ ref('refined_orders') }}
