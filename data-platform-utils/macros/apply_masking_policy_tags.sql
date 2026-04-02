{% macro apply_masking_policy_tags(column_name) %}

    {% set normalized_column_name = column_name | lower %}

    {% if 'email' in normalized_column_name %}
        {{ return('SENSITIVE_EMAIL') }}
    {% elif 'phone' in normalized_column_name %}
        {{ return('SENSITIVE_PHONE') }}
    {% elif 'name' in normalized_column_name %}
        {{ return('SENSITIVE_NAME') }}
    {% else %}
        {{ return('NON_SENSITIVE') }}
    {% endif %}

{% endmacro %}
