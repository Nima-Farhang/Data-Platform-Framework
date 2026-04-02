# How To Use Agents And Skills

The agents and skills in this repository are **instruction assets**, not executable software.

They are designed to make LLM-based engineering work more structured.

## Core Idea

- Agent = role
- Skill = reusable task
- Workflow = agent using one or more skills

Example:

- `planning_agent.md` defines how the AI should think about planning a dbt pipeline
- `build_model.md` defines how the AI should build a dbt model
- `validation_agent.md` defines how the AI should check quality and compliance

## Simple Workflow

### 1. Planning
Open:
- `.github/agents/planning_agent.md`

Then ask your LLM:

"Act as the Planning Agent defined below. Plan a customer support analytics pipeline using RAW, REFINED, MODELLED, and SERVING layers."

### 2. Build
Open:
- `.github/agents/build_agent.md`
- `skills/build_model.md`

Then ask your LLM:

"Using the Build Agent role and Build Model skill below, create the `refined_support_tickets.sql` model."

### 3. Validate
Open:
- `.github/agents/validation_agent.md`
- `skills/validate_model.md`

Then ask your LLM:

"Using the Validation Agent role and Validate Model skill below, review the generated model for naming, layering, testing, and dependency quality."

### 4. Document
Open:
- `.github/agents/documentation_agent.md`
- `skills/generate_schema_yaml.md`

Then ask your LLM:

"Using the Documentation Agent role and Generate Schema YAML skill below, create a schema.yml entry for the model."

## Practical Rule

Do not ask the LLM to "just build everything."

Instead:
1. plan
2. build
3. validate
4. document

That is the main value of the agent and skill structure.
