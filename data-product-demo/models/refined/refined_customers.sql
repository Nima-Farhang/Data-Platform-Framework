{{ config(schema='refined', materialized='view') }}

with source_data as (

    select
        customer_id,
        trim(customer_name) as customer_name,
        lower(trim(email_address)) as email_address,
        trim(phone_number) as phone_number,
        upper(trim(customer_status)) as customer_status,
        created_at,
        updated_at
    from {{ ref('raw_customers') }}

)

select
    customer_id,
    customer_name,
    email_address,
    phone_number,
    customer_status,
    created_at,
    updated_at,
    '{{ apply_masking_policy_tags("email_address") }}' as email_sensitivity_class,
    '{{ apply_masking_policy_tags("phone_number") }}' as phone_sensitivity_class,
    {{ add_audit_columns() }}
from source_data
