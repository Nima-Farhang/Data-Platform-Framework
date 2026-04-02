{% macro add_audit_columns() %}

    current_timestamp() as dbt_loaded_at,
    '{{ target.name }}' as dbt_environment,
    '{{ invocation_id }}' as dbt_invocation_id

{% endmacro %}
