---
name: extract-widget-methods
description: >-
  Extract private Flutter _build* methods into private StatelessWidget classes.
  Use when the user asks to extract widgets, split a build method, or refactor
  widget methods.
user-invocable: true
---

# Extract widget methods

## Candidates

Extract private methods that return `Widget` / `Widget?`, are named `_build*` / `_create*` / `_*Widget`, and are:

- 10–150 lines, tree depth ≥ 3
- Called in ≤ 3 places
- Passing only constructor-friendly data

Skip tiny helpers, loop bodies, and methods that close over lots of `State` fields.

## Naming

`_buildHeader()` → `_Header`. Keep the underscore (private to the file).

```dart
class _Header extends StatelessWidget {
  const _Header({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) { /* ... */ }
}
```

- `const` constructor, `final` fields, `super.key` only if the parent needs a key
- Read `Theme.of(context)` inside `build` instead of passing `ThemeData` through
- Do not change behavior, layout, or public API
- Follow `.cursor/rules/ui-components.mdc` and `dart-core-practices.mdc`
- After edits, leave the file compiling; do not reformat the whole app unless asked
