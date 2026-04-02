# Data Platform Utils

This dbt subproject acts as the **shared platform layer** for the repository.

It contains reusable macros and standards-oriented assets that can be consumed by dbt projects such as `data-product-demo`.

## Included Capabilities

- schema generation logic
- query tagging
- incremental timestamp helper
- audit column helper
- simple masking classification pattern
- example custom test

## How To Review

1. start with `docs/macro-catalog.md`
2. review the macros in `macros/`
3. inspect where they are used from `../data-product-demo/`

## How To Practice

- extend `set_query_tag.sql`
- harden `get_max_timestamp.sql`
- add a surrogate key macro
- add a row hash macro
- extend masking rules
