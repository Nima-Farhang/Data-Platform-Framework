# Skill: Generate Schema YAML

## Purpose
Create a dbt schema.yml entry for a model.

## Inputs
- model name
- model purpose
- column list
- known business rules

## Process
1. write a concise model description
2. write concise column descriptions
3. recommend suitable tests
4. keep wording factual and simple

## Output
- complete schema.yml block for the model

## Quality Rules
- do not invent unsupported business logic
- descriptions should help both engineers and analysts
- use standard dbt test patterns where appropriate
