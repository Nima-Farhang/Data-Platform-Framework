# Example Agent Prompts

## Example 1 - Planning

Use this with:
- `.github/agents/planning_agent.md`

Prompt:

Act as the Planning Agent defined below.
Plan a dbt pipeline for a customer and support analytics data product.
The project must use RAW, REFINED, MODELLED, and SERVING layers.
Propose:
- the models
- the layer for each model
- dependencies
- tests needed

## Example 2 - Build

Use this with:
- `.github/agents/build_agent.md`
- `skills/build_model.md`

Prompt:

Act as the Build Agent defined below and use the Build Model skill.
Create a dbt model called `refined_orders.sql` from `raw_orders`.
Requirements:
- use the shared audit column macro
- support incremental loading
- keep naming standards consistent

## Example 3 - Validate

Use this with:
- `.github/agents/validation_agent.md`
- `skills/validate_model.md`

Prompt:

Act as the Validation Agent defined below and use the Validate Model skill.
Review the following dbt model.
Check:
- naming consistency
- layer appropriateness
- test gaps
- incremental logic quality

## Example 4 - Document

Use this with:
- `.github/agents/documentation_agent.md`
- `skills/generate_schema_yaml.md`

Prompt:

Act as the Documentation Agent defined below and use the Generate Schema YAML skill.
Create a schema.yml block for the `dim_customers` model including descriptions and suitable tests.
