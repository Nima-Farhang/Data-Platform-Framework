# Skill: Build Model

## Purpose
Create a dbt model in a consistent and maintainable way.

## Inputs
- model name
- source relation or upstream model
- target layer
- materialization choice
- business purpose
- whether incremental loading is required

## Process
1. confirm the model belongs in the requested layer
2. define the config block
3. select only required columns
4. apply transformations clearly
5. use shared macros where relevant
6. add audit metadata if appropriate
7. recommend tests and documentation follow-up

## Output
- dbt SQL model
- short rationale
- recommended tests

## Quality Rules
- prefer clarity over cleverness
- use descriptive field names
- avoid duplicated logic where shared macros exist
- keep the model easy to review
