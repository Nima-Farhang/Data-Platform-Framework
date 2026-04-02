# How To Use This Repo

This repository is both a learning tool and a starter framework.

## Recommended Reading Order

### Step 1
Read:
- `README.md`
- `docs/architecture-overview.md`

### Step 2
Read the platform utilities:
- `data-platform-utils/README.md`
- `data-platform-utils/docs/macro-catalog.md`

### Step 3
Read the data product demo:
- `data-product-demo/README.md`
- `data-product-demo/models/`

### Step 4
Read the AI workflow layer:
- `.github/agents/`
- `skills/`
- `docs/how-to-use-agents-and-skills.md`

## How To Practice

### Practice 1 - Schema standardisation
Modify `generate_schema_name.sql` and see how your schema naming rules would change across the project.

### Practice 2 - Query observability
Extend `set_query_tag.sql` so the tag includes model name, layer, and git branch.

### Practice 3 - Incremental reuse
Use `get_max_timestamp.sql` in another incremental model.

### Practice 4 - Governance
Extend `apply_masking_policy_tags.sql` to classify more PII columns.

### Practice 5 - AI standardisation
Use the example agent prompts and see how much more consistent the LLM becomes when role and skill definitions are applied.
