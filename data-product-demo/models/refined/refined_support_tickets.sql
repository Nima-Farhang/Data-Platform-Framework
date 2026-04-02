{{ config(schema='refined', materialized='view') }}

with source_data as (

    select
        ticket_id,
        customer_id,
        opened_date,
        nullif(closed_date, '') as closed_date,
        upper(trim(ticket_status)) as ticket_status,
        issue_category,
        updated_at
    from {{ ref('raw_support_tickets') }}

)

select
    ticket_id,
    customer_id,
    opened_date,
    closed_date,
    ticket_status,
    issue_category,
    updated_at,
    {{ add_audit_columns() }}
from source_data
