{% test sys_freshness_test(model, timestamp_column, max_age_days) %}

select *
from {{ model }}
where {{ timestamp_column }} < dateadd(day, -{{ max_age_days }}, current_timestamp())

{% endtest %}
