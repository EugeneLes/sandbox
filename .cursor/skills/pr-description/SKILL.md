---
name: pr-description
description: >-
  Draft a GitHub PR title and body from commits on the current branch compared
  to master. Use when the user asks for a PR description, pull request summary,
  or what's in this branch.
user-invocable: true
---

# PR description (branch vs master)

Produce a copy-paste-ready GitHub PR **title** and **body** from committed work on the current branch vs **`master`**. Remote: `EugeneLes/sandbox`.

## Collect

From repo root:

```bash
git rev-parse --abbrev-ref HEAD
git log --reverse --pretty=format:'%h %s%n%b%n---' master..HEAD
git diff --stat master...HEAD
```

Base ref order: `origin/master` if present, else `master`. Three-dot diff (`master...HEAD`).

## Write

- Title: imperative, ≤72 characters
- Summary: what changed and why
- Changes: bullets grouped by feature folder (`news`, `favorites`, `lib/routing`, …)
- How to test: concrete `fvm flutter` / `fvm dart run melos` commands, or "Not tested (reason)"
- Risks: routing, codegen, persistence — or "None noted"

Match the commit tone already on the branch. No ticket section.

## Output

Reply with **exactly one** fenced markdown block the user can paste into GitHub:

````markdown
```markdown
# <title>

## Summary
<paragraphs>

## Changes
- <folder>: <what>

## How to test
- <steps>

## Risks / rollout notes
<content or "None noted">
```
````
