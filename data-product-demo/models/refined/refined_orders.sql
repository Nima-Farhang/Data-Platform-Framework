{{ config(
    materialized='incremental',
    schema='refined'
) }}

with source_data as (

    select
        order_id,
        customer_id,
        order_date,
        order_amount,
        order_status,
        updated_at
    from {{ ref('raw_orders') }}

),

filtered_data as (

    select *
    from source_data

    {% if is_incremental() %}
        where updated_at > '{{ get_max_timestamp(this, "updated_at") }}'
    {% endif %}

)

select
    order_id,
    customer_id,
    order_date,
    order_amount,
    upper(trim(order_status)) as order_status,
    updated_at,
    {{ add_audit_columns() }}
from filtered_data
