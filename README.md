# Data Platform Framework

A portfolio project demonstrating how to build a reusable dbt platform layer and apply it in a real data product.

This repository is intentionally structured as a **single demo repository** with two dbt subprojects:

- `data-platform-utils/` = reusable platform capabilities
- `data-product-demo/` = example data product consuming those capabilities

It also includes:

- `.github/agents/` = structured AI agent role definitions
- `skills/` = reusable AI task instructions
- `.github/workflows/` = CI validation examples
- `docs/` = architecture, principles, and usage guides

## Repository Structure

```text
data-platform-framework/
├─ .github/
│  ├─ agents/
│  └─ workflows/
├─ docs/
├─ skills/
├─ data-platform-utils/
└─ data-product-demo/
```

## What This Demonstrates

- reusable dbt macros
- schema standardisation
- query tagging
- incremental helper logic
- audit metadata standards
- simple governance / masking patterns
- structured AI-assisted engineering workflows

## How To Use This Repository

### 1. Review the architecture first
Read these files:

- `docs/architecture-overview.md`
- `docs/platform-principles.md`
- `docs/how-to-use-this-repo.md`

### 2. Start with the platform layer
Review:

- `data-platform-utils/README.md`
- `data-platform-utils/docs/macro-catalog.md`
- `data-platform-utils/macros/`

### 3. Then review the demo data product
Review:

- `data-product-demo/README.md`
- `data-product-demo/models/`
- `data-product-demo/analyses/query_cost_by_tag.sql`

### 4. Then review the AI workflow layer
Review:

- `.github/agents/`
- `skills/`
- `docs/how-to-use-agents-and-skills.md`

## Practical Learning Path

### Option A - Learn the dbt platform concepts
1. Read the utils macros
2. Trace where they are used in `data-product-demo`
3. Modify one macro and see how the demo project changes

### Option B - Practice structured AI engineering
1. Open one agent file from `.github/agents/`
2. Open one skill file from `skills/`
3. Use the prompts in `docs/how-to-use-agents-and-skills.md`
4. Ask an LLM to act as that agent and follow the skill

### Option C - Extend the platform
Build one more capability, such as:
- surrogate key macro
- row change hash macro
- stronger masking rules
- schema YAML generation workflow

## Local dbt Usage

This repository is a learning/demo scaffold. You will need your own dbt profile and Snowflake connection details to run it end-to-end.

Typical flow for the demo project:

```bash
cd data-product-demo
dbt deps
dbt seed
dbt parse
dbt build
```

Typical flow for the utils project:

```bash
cd data-platform-utils
dbt parse
```

## AI Workflow Usage

You do not "run" the agents and skills directly as code.

They are instruction assets intended to be used with an LLM.

Example workflow:

1. Read `.github/agents/planning_agent.md`
2. Paste its instructions into ChatGPT or another LLM
3. Give the LLM a task such as:
   - "Plan a support ticket analytics pipeline"
4. Then use:
   - `.github/agents/build_agent.md`
   - `skills/build_model.md`
5. Then validate using:
   - `.github/agents/validation_agent.md`
   - `skills/validate_model.md`

See:
- `docs/how-to-use-agents-and-skills.md`
- `docs/example-agent-prompts.md`

## Why This Exists

Most dbt demo repositories show only transformations.

This repository shows how to build a reusable **analytics engineering platform layer** and combine it with a **structured AI workflow layer** so engineering work becomes more repeatable and more consistent.
