---
name: add-module
description: >-
  Add an experimental feature module under lib/ in the sandbox Flutter app.
  Use when the user asks to add a module, feature, experiment, or new screen
  such as news, favorites, or traffic_light.
user-invocable: true
---

# Add a feature module

Experiments stay inside the `sandbox` package as `lib/<name>/`. Read `.cursor/rules/feature-creation.mdc` and match `news` (API + use cases) or `traffic_light` (local state only).

## 1. Confirm the slice

Ask only if the user did not say: module name, what the screen shows, and whether it needs a remote API. Default to a `HomePage` tab.

## 2. Create the folders you need

```
lib/<name>/
  domain/models/
  view/bloc/<name>_bloc.dart      # part: event, state, freezed
  view/model/
  view/page/<name>_page.dart
  view/widgets/
```

Add `data/datasource`, `data/repo`, and `domain/usecases` when something is fetched or stored. Use case classes end with `UC` and expose `call(...)`.

## 3. Wire it

- `@Injectable()` on the bloc and use cases, `@LazySingleton()` on repositories
- Page: `BlocProvider(create: (_) => get<NameBloc>()..init())`
- Tab: add a label and the page in `lib/home_page.dart`
- Own path: `TypedGoRoute` in `lib/routing/routes.dart`
- Shared widgets only if a second feature needs them (`lib/shared/view/widgets/`)

## 4. Generate and check

```bash
fvm dart run melos run build_runner --no-select
fvm flutter analyze
```

Add `test/<name>/view/<name>_bloc_test.dart` with `bloc_test` and `mocktail` when the bloc has branching behavior.

Do not create a new pub package or a `packages/` tree unless the user asks to split the Melos workspace.
