{{ config(schema='modelled', materialized='table') }}

select
    ticket_id,
    customer_id,
    opened_date,
    closed_date,
    ticket_status,
    issue_category,
    updated_at,
    dbt_loaded_at,
    dbt_environment,
    dbt_invocation_id
from {{ ref('refined_support_tickets') }}
