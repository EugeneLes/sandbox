// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsEvent {
  String get source;
  bool get skipLoader;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewsEventCopyWith<NewsEvent> get copyWith =>
      _$NewsEventCopyWithImpl<NewsEvent>(this as NewsEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewsEvent &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.skipLoader, skipLoader) ||
                other.skipLoader == skipLoader));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, skipLoader);

  @override
  String toString() {
    return 'NewsEvent(source: $source, skipLoader: $skipLoader)';
  }
}

/// @nodoc
abstract mixin class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) _then) =
      _$NewsEventCopyWithImpl;
  @useResult
  $Res call({String source, bool skipLoader});
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._self, this._then);

  final NewsEvent _self;
  final $Res Function(NewsEvent) _then;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? skipLoader = null,
  }) {
    return _then(_self.copyWith(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      skipLoader: null == skipLoader
          ? _self.skipLoader
          : skipLoader // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [NewsEvent].
extension NewsEventPatterns on NewsEvent {
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
    TResult Function(_NewsLoadEvent value)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewsLoadEvent() when load != null:
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
    required TResult Function(_NewsLoadEvent value) load,
  }) {
    final _that = this;
    switch (_that) {
      case _NewsLoadEvent():
        return load(_that);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(_NewsLoadEvent value)? load,
  }) {
    final _that = this;
    switch (_that) {
      case _NewsLoadEvent() when load != null:
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
    TResult Function(String source, bool skipLoader)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NewsLoadEvent() when load != null:
        return load(_that.source, _that.skipLoader);
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
    required TResult Function(String source, bool skipLoader) load,
  }) {
    final _that = this;
    switch (_that) {
      case _NewsLoadEvent():
        return load(_that.source, _that.skipLoader);
      case _:
        throw StateError('Unexpected subclass');
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
    TResult? Function(String source, bool skipLoader)? load,
  }) {
    final _that = this;
    switch (_that) {
      case _NewsLoadEvent() when load != null:
        return load(_that.source, _that.skipLoader);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NewsLoadEvent implements NewsEvent {
  const _NewsLoadEvent(this.source, {this.skipLoader = false});

  @override
  final String source;
  @override
  @JsonKey()
  final bool skipLoader;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NewsLoadEventCopyWith<_NewsLoadEvent> get copyWith =>
      __$NewsLoadEventCopyWithImpl<_NewsLoadEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewsLoadEvent &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.skipLoader, skipLoader) ||
                other.skipLoader == skipLoader));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, skipLoader);

  @override
  String toString() {
    return 'NewsEvent.load(source: $source, skipLoader: $skipLoader)';
  }
}

/// @nodoc
abstract mixin class _$NewsLoadEventCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory _$NewsLoadEventCopyWith(
          _NewsLoadEvent value, $Res Function(_NewsLoadEvent) _then) =
      __$NewsLoadEventCopyWithImpl;
  @override
  @useResult
  $Res call({String source, bool skipLoader});
}

/// @nodoc
class __$NewsLoadEventCopyWithImpl<$Res>
    implements _$NewsLoadEventCopyWith<$Res> {
  __$NewsLoadEventCopyWithImpl(this._self, this._then);

  final _NewsLoadEvent _self;
  final $Res Function(_NewsLoadEvent) _then;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? skipLoader = null,
  }) {
    return _then(_NewsLoadEvent(
      null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      skipLoader: null == skipLoader
          ? _self.skipLoader
          : skipLoader // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
mixin _$NewsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewsState()';
  }
}

/// @nodoc
class $NewsStateCopyWith<$Res> {
  $NewsStateCopyWith(NewsState _, $Res Function(NewsState) __);
}

/// Adds pattern-matching-related methods to [NewsState].
extension NewsStatePatterns on NewsState {
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
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NewsInitialState() when initial != null:
        return initial(_that);
      case NewsLoadingState() when loading != null:
        return loading(_that);
      case NewsLoadedState() when loaded != null:
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
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadedState value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case NewsInitialState():
        return initial(_that);
      case NewsLoadingState():
        return loading(_that);
      case NewsLoadedState():
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
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case NewsInitialState() when initial != null:
        return initial(_that);
      case NewsLoadingState() when loading != null:
        return loading(_that);
      case NewsLoadedState() when loaded != null:
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
    TResult Function(NewsViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case NewsInitialState() when initial != null:
        return initial();
      case NewsLoadingState() when loading != null:
        return loading();
      case NewsLoadedState() when loaded != null:
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
    required TResult Function(NewsViewModel viewModel) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case NewsInitialState():
        return initial();
      case NewsLoadingState():
        return loading();
      case NewsLoadedState():
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
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case NewsInitialState() when initial != null:
        return initial();
      case NewsLoadingState() when loading != null:
        return loading();
      case NewsLoadedState() when loaded != null:
        return loaded(_that.viewModel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class NewsInitialState implements NewsState {
  const NewsInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewsState.initial()';
  }
}

/// @nodoc

class NewsLoadingState implements NewsState {
  const NewsLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NewsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'NewsState.loading()';
  }
}

/// @nodoc

class NewsLoadedState implements NewsState {
  const NewsLoadedState(this.viewModel);

  final NewsViewModel viewModel;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NewsLoadedStateCopyWith<NewsLoadedState> get copyWith =>
      _$NewsLoadedStateCopyWithImpl<NewsLoadedState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NewsLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @override
  String toString() {
    return 'NewsState.loaded(viewModel: $viewModel)';
  }
}

/// @nodoc
abstract mixin class $NewsLoadedStateCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory $NewsLoadedStateCopyWith(
          NewsLoadedState value, $Res Function(NewsLoadedState) _then) =
      _$NewsLoadedStateCopyWithImpl;
  @useResult
  $Res call({NewsViewModel viewModel});
}

/// @nodoc
class _$NewsLoadedStateCopyWithImpl<$Res>
    implements $NewsLoadedStateCopyWith<$Res> {
  _$NewsLoadedStateCopyWithImpl(this._self, this._then);

  final NewsLoadedState _self;
  final $Res Function(NewsLoadedState) _then;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(NewsLoadedState(
      null == viewModel
          ? _self.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as NewsViewModel,
    ));
  }
}

// dart format on
