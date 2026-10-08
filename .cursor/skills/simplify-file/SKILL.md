---
name: simplify-file
description: >-
  Refactor one unwieldy Dart file for clarity without changing behavior. Writes
  or extends tests first. Use when the user asks to simplify, clean up, or
  untangle a file.
---

# Simplify a Dart file

The user provides a path (or has a file focused). If ambiguous, ask which file.

## 1. Understand

Read the file and its callers. Identify type: page, content widget, bloc, repository, use case, datasource, or model.

Read matching rules in `.cursor/rules/`: `dart-core-practices.mdc`, `control-flow-patterns.mdc`, plus `api-repositories.mdc` / `state-management.mdc` / `ui-components.mdc` as relevant.

List planned refactors and wait for approval before editing.

## 2. Tests first

Extend or add tests under `test/`, mirroring `lib/`. Cover public behavior. Run `fvm flutter test <file>` from the repo root; it must pass before refactors.

## 3. Refactor incrementally

One logical change at a time, re-run tests after each:

- Early returns, exhaustive `state.when` or `switch` on enums
- Extract private widgets (see `extract-widget-methods`)
- Split methods longer than about 40 lines
- Move `get<T>()` out of repositories and use cases into constructor parameters
- Cancel subscriptions in `close()` and dispose controllers

Do not change public APIs or move files across features unless that was approved in step 1.

## 4. Finish

`fvm dart format --line-length=100` on touched files. Summarize what changed and what was deliberately left alone.
