---
name: dependency-upgrade
description: >-
  Assess Flutter/Dart pub outdated results and land one dependency upgrade.
  Use when checking outdated packages, bumping a pub dependency, or reviewing
  a version upgrade.
user-invocable: true
---

# Dependency upgrade

One dependency per change. Use FVM from the repo root.

## 1. Survey

```bash
fvm flutter pub outdated
```

Ignore packages that are already current.

## 2. Protect

Ask before upgrading these — they affect codegen or app architecture:

- `go_router`, `go_router_builder`
- `flutter_bloc`, `freezed`, `freezed_annotation`
- `injectable`, `injectable_generator`
- `chopper`, `chopper_generator`
- `build_runner`, `json_serializable`, `json_annotation`
- `melos`

## 3. Propose

For each safe candidate, list current → latest, changelog highlights, and which `lib/` features import it. Let the user pick **one**.

## 4. Land (after they pick)

1. Update `pubspec.yaml`
2. `fvm flutter pub get`
3. `fvm dart run melos run build_runner --no-select` when the package participates in codegen
4. `fvm flutter analyze` and the relevant `fvm flutter test`
5. Commit only if the user asked, message like `chore: bump <package> to <version>`
