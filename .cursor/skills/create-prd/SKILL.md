---
name: create-prd
description: >-
  Write a product requirements doc for a sandbox feature or refactor. Use when
  the user asks to create a PRD, spec a feature, or capture requirements.
user-invocable: true
---

# PRD generator

Do not implement the feature. Capture requirements in `docs/prd/`.

## 1. Classify

| Type | Focus |
|---|---|
| feature | New module or screen |
| refactor | Same behavior, new structure |
| docs | Guides only |

Complexity: simple (1 question round) / medium (2) / complex (2–3).

## 2. Ask

Round 1: user, happy path, empty/error states, out of scope.

Round 2 (medium+): feature folder (`lib/news`, `lib/favorites`, a new `lib/<name>`), persistence (local vs Chopper API), route vs `HomePage` tab.

## 3. Write

Save `docs/prd/<feature-slug>.md`:

```markdown
- **Type:** feature | refactor | docs
- **Complexity:** simple | medium | complex
- **Folders:** lib/<name>, lib/routing, lib/home_page.dart

## Goals
## Functional requirements
- FR-1: …
## Non-goals
## UX notes
## Technical notes
- Bloc states, use cases, Chopper endpoints, route or tab, codegen
## Open questions
```

Reference real paths (`lib/news/view/bloc/news_bloc.dart`, `LoadNewsUC`) when known. Number FRs so they can be implemented one at a time.
