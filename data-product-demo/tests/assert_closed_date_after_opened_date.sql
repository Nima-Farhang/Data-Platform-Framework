select *
from {{ ref('fct_support_tickets') }}
where closed_date is not null
  and closed_date < opened_date
