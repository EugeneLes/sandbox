// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sources_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SourcesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SourcesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SourcesEvent()';
  }
}

/// @nodoc
class $SourcesEventCopyWith<$Res> {
  $SourcesEventCopyWith(SourcesEvent _, $Res Function(SourcesEvent) __);
}

/// Adds pattern-matching-related methods to [SourcesEvent].
extension SourcesEventPatterns on SourcesEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesFavoriteEvent value)? favorite,
    TResult Function(_SourcesLoadEvent value)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesFavoriteEvent() when favorite != null:
        return favorite(_that);
      case _SourcesLoadEvent() when load != null:
        return load(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourcesFavoriteEvent value) favorite,
    required TResult Function(_SourcesLoadEvent value) load,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesFavoriteEvent():
        return favorite(_that);
      case _SourcesLoadEvent():
        return load(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesFavoriteEvent value)? favorite,
    TResult? Function(_SourcesLoadEvent value)? load,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesFavoriteEvent() when favorite != null:
        return favorite(_that);
      case _SourcesLoadEvent() when load != null:
        return load(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? favorite,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesFavoriteEvent() when favorite != null:
        return favorite(_that.articleId);
      case _SourcesLoadEvent() when load != null:
        return load();
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) favorite,
    required TResult Function() load,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesFavoriteEvent():
        return favorite(_that.articleId);
      case _SourcesLoadEvent():
        return load();
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? favorite,
    TResult? Function()? load,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesFavoriteEvent() when favorite != null:
        return favorite(_that.articleId);
      case _SourcesLoadEvent() when load != null:
        return load();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SourcesFavoriteEvent implements SourcesEvent {
  const _SourcesFavoriteEvent(this.articleId);

  final String articleId;

  /// Create a copy of SourcesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SourcesFavoriteEventCopyWith<_SourcesFavoriteEvent> get copyWith =>
      __$SourcesFavoriteEventCopyWithImpl<_SourcesFavoriteEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SourcesFavoriteEvent &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @override
  String toString() {
    return 'SourcesEvent.favorite(articleId: $articleId)';
  }
}

/// @nodoc
abstract mixin class _$SourcesFavoriteEventCopyWith<$Res>
    implements $SourcesEventCopyWith<$Res> {
  factory _$SourcesFavoriteEventCopyWith(_SourcesFavoriteEvent value,
          $Res Function(_SourcesFavoriteEvent) _then) =
      __$SourcesFavoriteEventCopyWithImpl;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$SourcesFavoriteEventCopyWithImpl<$Res>
    implements _$SourcesFavoriteEventCopyWith<$Res> {
  __$SourcesFavoriteEventCopyWithImpl(this._self, this._then);

  final _SourcesFavoriteEvent _self;
  final $Res Function(_SourcesFavoriteEvent) _then;

  /// Create a copy of SourcesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_SourcesFavoriteEvent(
      null == articleId
          ? _self.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _SourcesLoadEvent implements SourcesEvent {
  const _SourcesLoadEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SourcesLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SourcesEvent.load()';
  }
}

/// @nodoc
mixin _$SourcesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SourcesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SourcesState()';
  }
}

/// @nodoc
class $SourcesStateCopyWith<$Res> {
  $SourcesStateCopyWith(SourcesState _, $Res Function(SourcesState) __);
}

/// Adds pattern-matching-related methods to [SourcesState].
extension SourcesStatePatterns on SourcesState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesInitialState value)? initial,
    TResult Function(_SourcesLoadingState value)? loading,
    TResult Function(_SourcesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesInitialState() when initial != null:
        return initial(_that);
      case _SourcesLoadingState() when loading != null:
        return loading(_that);
      case _SourcesLoadedState() when loaded != null:
        return loaded(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourcesInitialState value) initial,
    required TResult Function(_SourcesLoadingState value) loading,
    required TResult Function(_SourcesLoadedState value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesInitialState():
        return initial(_that);
      case _SourcesLoadingState():
        return loading(_that);
      case _SourcesLoadedState():
        return loaded(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesInitialState value)? initial,
    TResult? Function(_SourcesLoadingState value)? loading,
    TResult? Function(_SourcesLoadedState value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesInitialState() when initial != null:
        return initial(_that);
      case _SourcesLoadingState() when loading != null:
        return loading(_that);
      case _SourcesLoadedState() when loaded != null:
        return loaded(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SourcesViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesInitialState() when initial != null:
        return initial();
      case _SourcesLoadingState() when loading != null:
        return loading();
      case _SourcesLoadedState() when loaded != null:
        return loaded(_that.viewModel);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SourcesViewModel viewModel) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesInitialState():
        return initial();
      case _SourcesLoadingState():
        return loading();
      case _SourcesLoadedState():
        return loaded(_that.viewModel);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SourcesViewModel viewModel)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _SourcesInitialState() when initial != null:
        return initial();
      case _SourcesLoadingState() when loading != null:
        return loading();
      case _SourcesLoadedState() when loaded != null:
        return loaded(_that.viewModel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SourcesInitialState implements SourcesState {
  const _SourcesInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SourcesInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SourcesState.initial()';
  }
}

/// @nodoc

class _SourcesLoadingState implements SourcesState {
  const _SourcesLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SourcesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SourcesState.loading()';
  }
}

/// @nodoc

class _SourcesLoadedState implements SourcesState {
  const _SourcesLoadedState(this.viewModel);

  final SourcesViewModel viewModel;

  /// Create a copy of SourcesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SourcesLoadedStateCopyWith<_SourcesLoadedState> get copyWith =>
      __$SourcesLoadedStateCopyWithImpl<_SourcesLoadedState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SourcesLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @override
  String toString() {
    return 'SourcesState.loaded(viewModel: $viewModel)';
  }
}

/// @nodoc
abstract mixin class _$SourcesLoadedStateCopyWith<$Res>
    implements $SourcesStateCopyWith<$Res> {
  factory _$SourcesLoadedStateCopyWith(
          _SourcesLoadedState value, $Res Function(_SourcesLoadedState) _then) =
      __$SourcesLoadedStateCopyWithImpl;
  @useResult
  $Res call({SourcesViewModel viewModel});
}

/// @nodoc
class __$SourcesLoadedStateCopyWithImpl<$Res>
    implements _$SourcesLoadedStateCopyWith<$Res> {
  __$SourcesLoadedStateCopyWithImpl(this._self, this._then);

  final _SourcesLoadedState _self;
  final $Res Function(_SourcesLoadedState) _then;

  /// Create a copy of SourcesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_SourcesLoadedState(
      null == viewModel
          ? _self.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as SourcesViewModel,
    ));
  }
}

// dart format on
