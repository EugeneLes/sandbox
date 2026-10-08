// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traffic_light_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrafficLightEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TrafficLightEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TrafficLightEvent()';
  }
}

/// @nodoc
class $TrafficLightEventCopyWith<$Res> {
  $TrafficLightEventCopyWith(
      TrafficLightEvent _, $Res Function(TrafficLightEvent) __);
}

/// Adds pattern-matching-related methods to [TrafficLightEvent].
extension TrafficLightEventPatterns on TrafficLightEvent {
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
    TResult Function(_TrafficLightStartEvent value)? start,
    TResult Function(_TrafficLightStopEvent value)? stop,
    TResult Function(_TrafficLightLoadEvent value)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightStartEvent() when start != null:
        return start(_that);
      case _TrafficLightStopEvent() when stop != null:
        return stop(_that);
      case _TrafficLightLoadEvent() when load != null:
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
    required TResult Function(_TrafficLightStartEvent value) start,
    required TResult Function(_TrafficLightStopEvent value) stop,
    required TResult Function(_TrafficLightLoadEvent value) load,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightStartEvent():
        return start(_that);
      case _TrafficLightStopEvent():
        return stop(_that);
      case _TrafficLightLoadEvent():
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
    TResult? Function(_TrafficLightStartEvent value)? start,
    TResult? Function(_TrafficLightStopEvent value)? stop,
    TResult? Function(_TrafficLightLoadEvent value)? load,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightStartEvent() when start != null:
        return start(_that);
      case _TrafficLightStopEvent() when stop != null:
        return stop(_that);
      case _TrafficLightLoadEvent() when load != null:
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
    TResult Function(String articleId)? start,
    TResult Function(String articleId)? stop,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightStartEvent() when start != null:
        return start(_that.articleId);
      case _TrafficLightStopEvent() when stop != null:
        return stop(_that.articleId);
      case _TrafficLightLoadEvent() when load != null:
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
    required TResult Function(String articleId) start,
    required TResult Function(String articleId) stop,
    required TResult Function() load,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightStartEvent():
        return start(_that.articleId);
      case _TrafficLightStopEvent():
        return stop(_that.articleId);
      case _TrafficLightLoadEvent():
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
    TResult? Function(String articleId)? start,
    TResult? Function(String articleId)? stop,
    TResult? Function()? load,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightStartEvent() when start != null:
        return start(_that.articleId);
      case _TrafficLightStopEvent() when stop != null:
        return stop(_that.articleId);
      case _TrafficLightLoadEvent() when load != null:
        return load();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TrafficLightStartEvent implements TrafficLightEvent {
  const _TrafficLightStartEvent(this.articleId);

  final String articleId;

  /// Create a copy of TrafficLightEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrafficLightStartEventCopyWith<_TrafficLightStartEvent> get copyWith =>
      __$TrafficLightStartEventCopyWithImpl<_TrafficLightStartEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrafficLightStartEvent &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @override
  String toString() {
    return 'TrafficLightEvent.start(articleId: $articleId)';
  }
}

/// @nodoc
abstract mixin class _$TrafficLightStartEventCopyWith<$Res>
    implements $TrafficLightEventCopyWith<$Res> {
  factory _$TrafficLightStartEventCopyWith(_TrafficLightStartEvent value,
          $Res Function(_TrafficLightStartEvent) _then) =
      __$TrafficLightStartEventCopyWithImpl;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$TrafficLightStartEventCopyWithImpl<$Res>
    implements _$TrafficLightStartEventCopyWith<$Res> {
  __$TrafficLightStartEventCopyWithImpl(this._self, this._then);

  final _TrafficLightStartEvent _self;
  final $Res Function(_TrafficLightStartEvent) _then;

  /// Create a copy of TrafficLightEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_TrafficLightStartEvent(
      null == articleId
          ? _self.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _TrafficLightStopEvent implements TrafficLightEvent {
  const _TrafficLightStopEvent(this.articleId);

  final String articleId;

  /// Create a copy of TrafficLightEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrafficLightStopEventCopyWith<_TrafficLightStopEvent> get copyWith =>
      __$TrafficLightStopEventCopyWithImpl<_TrafficLightStopEvent>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrafficLightStopEvent &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @override
  String toString() {
    return 'TrafficLightEvent.stop(articleId: $articleId)';
  }
}

/// @nodoc
abstract mixin class _$TrafficLightStopEventCopyWith<$Res>
    implements $TrafficLightEventCopyWith<$Res> {
  factory _$TrafficLightStopEventCopyWith(_TrafficLightStopEvent value,
          $Res Function(_TrafficLightStopEvent) _then) =
      __$TrafficLightStopEventCopyWithImpl;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$TrafficLightStopEventCopyWithImpl<$Res>
    implements _$TrafficLightStopEventCopyWith<$Res> {
  __$TrafficLightStopEventCopyWithImpl(this._self, this._then);

  final _TrafficLightStopEvent _self;
  final $Res Function(_TrafficLightStopEvent) _then;

  /// Create a copy of TrafficLightEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_TrafficLightStopEvent(
      null == articleId
          ? _self.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _TrafficLightLoadEvent implements TrafficLightEvent {
  const _TrafficLightLoadEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TrafficLightLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TrafficLightEvent.load()';
  }
}

/// @nodoc
mixin _$TrafficLightState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TrafficLightState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TrafficLightState()';
  }
}

/// @nodoc
class $TrafficLightStateCopyWith<$Res> {
  $TrafficLightStateCopyWith(
      TrafficLightState _, $Res Function(TrafficLightState) __);
}

/// Adds pattern-matching-related methods to [TrafficLightState].
extension TrafficLightStatePatterns on TrafficLightState {
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
    TResult Function(_TrafficLightInitialState value)? initial,
    TResult Function(_TrafficLightLoadingState value)? loading,
    TResult Function(_TrafficLightLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightInitialState() when initial != null:
        return initial(_that);
      case _TrafficLightLoadingState() when loading != null:
        return loading(_that);
      case _TrafficLightLoadedState() when loaded != null:
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
    required TResult Function(_TrafficLightInitialState value) initial,
    required TResult Function(_TrafficLightLoadingState value) loading,
    required TResult Function(_TrafficLightLoadedState value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightInitialState():
        return initial(_that);
      case _TrafficLightLoadingState():
        return loading(_that);
      case _TrafficLightLoadedState():
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
    TResult? Function(_TrafficLightInitialState value)? initial,
    TResult? Function(_TrafficLightLoadingState value)? loading,
    TResult? Function(_TrafficLightLoadedState value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightInitialState() when initial != null:
        return initial(_that);
      case _TrafficLightLoadingState() when loading != null:
        return loading(_that);
      case _TrafficLightLoadedState() when loaded != null:
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
    TResult Function(TrafficLightViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightInitialState() when initial != null:
        return initial();
      case _TrafficLightLoadingState() when loading != null:
        return loading();
      case _TrafficLightLoadedState() when loaded != null:
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
    required TResult Function(TrafficLightViewModel viewModel) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightInitialState():
        return initial();
      case _TrafficLightLoadingState():
        return loading();
      case _TrafficLightLoadedState():
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
    TResult? Function(TrafficLightViewModel viewModel)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _TrafficLightInitialState() when initial != null:
        return initial();
      case _TrafficLightLoadingState() when loading != null:
        return loading();
      case _TrafficLightLoadedState() when loaded != null:
        return loaded(_that.viewModel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TrafficLightInitialState implements TrafficLightState {
  const _TrafficLightInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrafficLightInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TrafficLightState.initial()';
  }
}

/// @nodoc

class _TrafficLightLoadingState implements TrafficLightState {
  const _TrafficLightLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrafficLightLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'TrafficLightState.loading()';
  }
}

/// @nodoc

class _TrafficLightLoadedState implements TrafficLightState {
  const _TrafficLightLoadedState(this.viewModel);

  final TrafficLightViewModel viewModel;

  /// Create a copy of TrafficLightState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrafficLightLoadedStateCopyWith<_TrafficLightLoadedState> get copyWith =>
      __$TrafficLightLoadedStateCopyWithImpl<_TrafficLightLoadedState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrafficLightLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @override
  String toString() {
    return 'TrafficLightState.loaded(viewModel: $viewModel)';
  }
}

/// @nodoc
abstract mixin class _$TrafficLightLoadedStateCopyWith<$Res>
    implements $TrafficLightStateCopyWith<$Res> {
  factory _$TrafficLightLoadedStateCopyWith(_TrafficLightLoadedState value,
          $Res Function(_TrafficLightLoadedState) _then) =
      __$TrafficLightLoadedStateCopyWithImpl;
  @useResult
  $Res call({TrafficLightViewModel viewModel});
}

/// @nodoc
class __$TrafficLightLoadedStateCopyWithImpl<$Res>
    implements _$TrafficLightLoadedStateCopyWith<$Res> {
  __$TrafficLightLoadedStateCopyWithImpl(this._self, this._then);

  final _TrafficLightLoadedState _self;
  final $Res Function(_TrafficLightLoadedState) _then;

  /// Create a copy of TrafficLightState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_TrafficLightLoadedState(
      null == viewModel
          ? _self.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as TrafficLightViewModel,
    ));
  }
}

// dart format on
