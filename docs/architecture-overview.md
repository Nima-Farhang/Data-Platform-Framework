# Architecture Overview

This repository has four main layers.

## 1. Platform Layer
Located in `data-platform-utils/`

Purpose:
- centralise reusable dbt macros
- standardise schema naming
- standardise query tagging
- standardise audit columns
- demonstrate governance patterns

## 2. Data Product Layer
Located in `data-product-demo/`

Purpose:
- demonstrate how the platform layer is used in a realistic dbt project
- show RAW -> REFINED -> MODELLED -> SERVING progression
- provide a concrete example rather than only utilities

## 3. AI Workflow Layer
Located in:
- `.github/agents/`
- `skills/`

Purpose:
- define structured AI roles
- define reusable AI tasks
- make LLM outputs more repeatable and standards-driven

## 4. CI Layer
Located in `.github/workflows/`

Purpose:
- validate project structure
- show engineering discipline
- demonstrate how platform and data-product changes could be checked automatically

## Key Design Choice

This is intentionally a **single repository** so the whole architecture is easy to understand for a reviewer.

For a real enterprise setup, the platform layer and the application layer might eventually be split into separate repositories.
