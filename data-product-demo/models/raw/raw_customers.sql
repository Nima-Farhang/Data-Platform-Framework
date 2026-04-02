{{ config(schema='raw', materialized='view') }}

select
    customer_id,
    customer_name,
    email_address,
    phone_number,
    customer_status,
    created_at,
    updated_at
from {{ ref('seed_customers') }}
