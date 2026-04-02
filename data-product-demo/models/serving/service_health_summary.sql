{{ config(schema='serving', materialized='view') }}

select
    issue_category,
    ticket_status,
    count(ticket_id) as total_tickets
from {{ ref('fct_support_tickets') }}
group by
    issue_category,
    ticket_status
