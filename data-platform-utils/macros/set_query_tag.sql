{% macro set_query_tag() %}

    {% if target.type == 'snowflake' %}

        {% set query_tag %}
            {{ target.name }}|{{ project_name }}|{{ invocation_id }}
        {% endset %}

        {% do run_query("alter session set query_tag = '" ~ query_tag | trim ~ "'") %}

    {% endif %}

{% endmacro %}
