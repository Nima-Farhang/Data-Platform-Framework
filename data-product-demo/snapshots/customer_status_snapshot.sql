{% snapshot customer_status_snapshot %}

{{
    config(
        target_schema='snapshot',
        unique_key='customer_id',
        strategy='check',
        check_cols=['customer_status']
    )
}}

select
    customer_id,
    customer_status,
    updated_at
from {{ ref('refined_customers') }}

{% endsnapshot %}
