---
name: pr-review
description: >-
  Review a sandbox pull request or branch diff for bugs and pattern drift.
  Use when reviewing PRs, diffs, or when the user asks for a code review.
user-invocable: true
---

# PR Review

Review committed branch changes against `master`.

## Input

1. If the user names a PR number or GitHub URL, fetch it with `gh`. Remote: `EugeneLes/sandbox`.
2. Otherwise review `git diff master...HEAD` (and uncommitted files if they asked for those too).
3. If `gh` is missing, review the local branch the same way.

Skip generated files: `*.g.dart`, `*.freezed.dart`, `*.chopper.dart`, `lib/di/di.config.dart`, `pubspec.lock`, platform registrant files.

## Focus

- New UI lives in `lib/<feature>/` with data / domain / view layers that the feature actually needs
- Blocs are `@Injectable()`, events and states are freezed `part`s, pages use `state.when`
- Repositories and use cases take constructor dependencies and do not call `get`
- Routes are `TypedGoRoute`s in `lib/routing/routes.dart`; codegen is `fvm dart run melos run build_runner --no-select`
- Subscriptions are cancelled in `Bloc.close()`; controllers in `dispose()`
- `context.mounted` after `await` before using `BuildContext`
- Line length 100, FVM

## Output

Lead with **approve / request changes / comment**. Then:

1. Short summary of what the change does
2. Findings by severity (blocker / high / medium / low), each with `file:line`, why it matters, and a fix
3. Test gaps
4. What looks solid

Do not nitpick formatting the analyzer already catches. Do not implement fixes unless asked.
