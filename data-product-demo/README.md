# Data Product Demo

This dbt subproject demonstrates how to consume the shared utilities from `../data-platform-utils`.

## Theme
A simple data product using:
- customers
- orders
- support tickets

## Layering
- RAW
- REFINED
- MODELLED
- SERVING

## How To Review

1. open `packages.yml`
2. see the local package reference to `../data-platform-utils`
3. review `dbt_project.yml`
4. inspect models in `models/`
5. inspect `analyses/query_cost_by_tag.sql`

## How To Run

```bash
cd data-product-demo
dbt deps
dbt seed
dbt parse
dbt build
```

You will need your own valid dbt profile and Snowflake connection to run it fully.
