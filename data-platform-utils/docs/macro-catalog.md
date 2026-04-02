# Macro Catalog

## generate_schema_name
Overrides dbt schema naming so a config like `schema='raw'` becomes `DEV_RAW`, `UAT_RAW`, or `PROD_RAW` depending on target.

## set_query_tag
Sets a simple Snowflake query tag at run start to improve visibility and attribution.

## get_max_timestamp
Returns the latest timestamp value from a relation and column for incremental loading patterns.

## add_audit_columns
Adds standard audit metadata fields to model outputs.

## apply_masking_policy_tags
Provides a simple demo classification for sensitive column names.
