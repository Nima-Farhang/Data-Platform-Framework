# Usage Guide

These macros are consumed from `data-product-demo` through a local dbt package reference.

## Example package reference

```yaml
packages:
  - local: ../data-platform-utils
```

## Example model usage

```sql
{{ config(
    materialized='incremental',
    schema='refined'
) }}

select
    order_id,
    {{ add_audit_columns() }}
from {{ ref('raw_orders') }}
```

## Example hook usage

```yaml
on-run-start:
  - "{{ set_query_tag() }}"
```
