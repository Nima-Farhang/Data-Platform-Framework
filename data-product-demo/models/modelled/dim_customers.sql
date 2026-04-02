{{ config(schema='modelled', materialized='table') }}

select
    customer_id,
    customer_name,
    customer_status,
    email_sensitivity_class,
    phone_sensitivity_class,
    created_at,
    updated_at,
    dbt_loaded_at,
    dbt_environment,
    dbt_invocation_id
from {{ ref('refined_customers') }}
