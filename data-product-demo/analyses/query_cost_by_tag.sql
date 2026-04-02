select
    query_tag,
    warehouse_name,
    credits_used_cloud_services,
    start_time
from snowflake.account_usage.query_history
where query_tag is not null
order by start_time desc
