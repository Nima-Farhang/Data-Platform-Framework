{{ config(schema='raw', materialized='view') }}

select
    ticket_id,
    customer_id,
    opened_date,
    closed_date,
    ticket_status,
    issue_category,
    updated_at
from {{ ref('seed_support_tickets') }}
