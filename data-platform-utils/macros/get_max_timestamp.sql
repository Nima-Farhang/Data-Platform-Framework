{% macro get_max_timestamp(relation_name, column_name) %}

    {% set query %}
        select max({{ column_name }}) as max_timestamp
        from {{ relation_name }}
    {% endset %}

    {% set results = run_query(query) %}

    {% if execute and results is not none and results.rows | length > 0 %}
        {% set max_timestamp = results.rows[0][0] %}
        {{ return(max_timestamp) }}
    {% else %}
        {{ return(none) }}
    {% endif %}

{% endmacro %}
