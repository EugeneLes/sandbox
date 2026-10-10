// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hex_conquest_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HexConquestEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HexConquestEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HexConquestEvent()';
  }
}

/// @nodoc
class $HexConquestEventCopyWith<$Res> {
  $HexConquestEventCopyWith(HexConquestEvent _, $Res Function(HexConquestEvent) __);
}

/// Adds pattern-matching-related methods to [HexConquestEvent].
extension HexConquestEventPatterns on HexConquestEvent {
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
    TResult Function(_Started value)? started,
    TResult Function(_Move value)? move,
    TResult Function(_Build value)? build,
    TResult Function(_EndTurn value)? endTurn,
    TResult Function(_Tick value)? tick,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _Move() when move != null:
        return move(_that);
      case _Build() when build != null:
        return build(_that);
      case _EndTurn() when endTurn != null:
        return endTurn(_that);
      case _Tick() when tick != null:
        return tick(_that);
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
    required TResult Function(_Started value) started,
    required TResult Function(_Move value) move,
    required TResult Function(_Build value) build,
    required TResult Function(_EndTurn value) endTurn,
    required TResult Function(_Tick value) tick,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that);
      case _Move():
        return move(_that);
      case _Build():
        return build(_that);
      case _EndTurn():
        return endTurn(_that);
      case _Tick():
        return tick(_that);
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
    TResult? Function(_Started value)? started,
    TResult? Function(_Move value)? move,
    TResult? Function(_Build value)? build,
    TResult? Function(_EndTurn value)? endTurn,
    TResult? Function(_Tick value)? tick,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that);
      case _Move() when move != null:
        return move(_that);
      case _Build() when build != null:
        return build(_that);
      case _EndTurn() when endTurn != null:
        return endTurn(_that);
      case _Tick() when tick != null:
        return tick(_that);
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
    TResult Function(MatchConfig config)? started,
    TResult Function(Axial destination)? move,
    TResult Function(Axial cell)? build,
    TResult Function()? endTurn,
    TResult Function()? tick,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that.config);
      case _Move() when move != null:
        return move(_that.destination);
      case _Build() when build != null:
        return build(_that.cell);
      case _EndTurn() when endTurn != null:
        return endTurn();
      case _Tick() when tick != null:
        return tick();
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
    required TResult Function(MatchConfig config) started,
    required TResult Function(Axial destination) move,
    required TResult Function(Axial cell) build,
    required TResult Function() endTurn,
    required TResult Function() tick,
  }) {
    final _that = this;
    switch (_that) {
      case _Started():
        return started(_that.config);
      case _Move():
        return move(_that.destination);
      case _Build():
        return build(_that.cell);
      case _EndTurn():
        return endTurn();
      case _Tick():
        return tick();
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
    TResult? Function(MatchConfig config)? started,
    TResult? Function(Axial destination)? move,
    TResult? Function(Axial cell)? build,
    TResult? Function()? endTurn,
    TResult? Function()? tick,
  }) {
    final _that = this;
    switch (_that) {
      case _Started() when started != null:
        return started(_that.config);
      case _Move() when move != null:
        return move(_that.destination);
      case _Build() when build != null:
        return build(_that.cell);
      case _EndTurn() when endTurn != null:
        return endTurn();
      case _Tick() when tick != null:
        return tick();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Started implements HexConquestEvent {
  const _Started(this.config);

  final MatchConfig config;

  /// Create a copy of HexConquestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StartedCopyWith<_Started> get copyWith => __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Started &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  @override
  String toString() {
    return 'HexConquestEvent.started(config: $config)';
  }
}

/// @nodoc
abstract mixin class _$StartedCopyWith<$Res> implements $HexConquestEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) _then) = __$StartedCopyWithImpl;
  @useResult
  $Res call({MatchConfig config});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(this._self, this._then);

  final _Started _self;
  final $Res Function(_Started) _then;

  /// Create a copy of HexConquestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? config = null,
  }) {
    return _then(_Started(
      null == config
          ? _self.config
          : config // ignore: cast_nullable_to_non_nullable
              as MatchConfig,
    ));
  }
}

/// @nodoc

class _Move implements HexConquestEvent {
  const _Move(this.destination);

  final Axial destination;

  /// Create a copy of HexConquestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoveCopyWith<_Move> get copyWith => __$MoveCopyWithImpl<_Move>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Move &&
            (identical(other.destination, destination) || other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  @override
  String toString() {
    return 'HexConquestEvent.move(destination: $destination)';
  }
}

/// @nodoc
abstract mixin class _$MoveCopyWith<$Res> implements $HexConquestEventCopyWith<$Res> {
  factory _$MoveCopyWith(_Move value, $Res Function(_Move) _then) = __$MoveCopyWithImpl;
  @useResult
  $Res call({Axial destination});
}

/// @nodoc
class __$MoveCopyWithImpl<$Res> implements _$MoveCopyWith<$Res> {
  __$MoveCopyWithImpl(this._self, this._then);

  final _Move _self;
  final $Res Function(_Move) _then;

  /// Create a copy of HexConquestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? destination = null,
  }) {
    return _then(_Move(
      null == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Axial,
    ));
  }
}

/// @nodoc

class _Build implements HexConquestEvent {
  const _Build(this.cell);

  final Axial cell;

  /// Create a copy of HexConquestEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BuildCopyWith<_Build> get copyWith => __$BuildCopyWithImpl<_Build>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Build &&
            (identical(other.cell, cell) || other.cell == cell));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cell);

  @override
  String toString() {
    return 'HexConquestEvent.build(cell: $cell)';
  }
}

/// @nodoc
abstract mixin class _$BuildCopyWith<$Res> implements $HexConquestEventCopyWith<$Res> {
  factory _$BuildCopyWith(_Build value, $Res Function(_Build) _then) = __$BuildCopyWithImpl;
  @useResult
  $Res call({Axial cell});
}

/// @nodoc
class __$BuildCopyWithImpl<$Res> implements _$BuildCopyWith<$Res> {
  __$BuildCopyWithImpl(this._self, this._then);

  final _Build _self;
  final $Res Function(_Build) _then;

  /// Create a copy of HexConquestEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cell = null,
  }) {
    return _then(_Build(
      null == cell
          ? _self.cell
          : cell // ignore: cast_nullable_to_non_nullable
              as Axial,
    ));
  }
}

/// @nodoc

class _EndTurn implements HexConquestEvent {
  const _EndTurn();

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _EndTurn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HexConquestEvent.endTurn()';
  }
}

/// @nodoc

class _Tick implements HexConquestEvent {
  const _Tick();

  @override
  bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _Tick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HexConquestEvent.tick()';
  }
}

/// @nodoc
mixin _$HexConquestState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HexConquestState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HexConquestState()';
  }
}

/// @nodoc
class $HexConquestStateCopyWith<$Res> {
  $HexConquestStateCopyWith(HexConquestState _, $Res Function(HexConquestState) __);
}

/// Adds pattern-matching-related methods to [HexConquestState].
extension HexConquestStatePatterns on HexConquestState {
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
    TResult Function(HexConquestInitialState value)? initial,
    TResult Function(HexConquestPlayingState value)? playing,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HexConquestInitialState() when initial != null:
        return initial(_that);
      case HexConquestPlayingState() when playing != null:
        return playing(_that);
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
    required TResult Function(HexConquestInitialState value) initial,
    required TResult Function(HexConquestPlayingState value) playing,
  }) {
    final _that = this;
    switch (_that) {
      case HexConquestInitialState():
        return initial(_that);
      case HexConquestPlayingState():
        return playing(_that);
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
    TResult? Function(HexConquestInitialState value)? initial,
    TResult? Function(HexConquestPlayingState value)? playing,
  }) {
    final _that = this;
    switch (_that) {
      case HexConquestInitialState() when initial != null:
        return initial(_that);
      case HexConquestPlayingState() when playing != null:
        return playing(_that);
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
    TResult Function(GameViewModel viewModel)? playing,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case HexConquestInitialState() when initial != null:
        return initial();
      case HexConquestPlayingState() when playing != null:
        return playing(_that.viewModel);
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
    required TResult Function(GameViewModel viewModel) playing,
  }) {
    final _that = this;
    switch (_that) {
      case HexConquestInitialState():
        return initial();
      case HexConquestPlayingState():
        return playing(_that.viewModel);
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
    TResult? Function(GameViewModel viewModel)? playing,
  }) {
    final _that = this;
    switch (_that) {
      case HexConquestInitialState() when initial != null:
        return initial();
      case HexConquestPlayingState() when playing != null:
        return playing(_that.viewModel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class HexConquestInitialState implements HexConquestState {
  const HexConquestInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HexConquestInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HexConquestState.initial()';
  }
}

/// @nodoc

class HexConquestPlayingState implements HexConquestState {
  const HexConquestPlayingState(this.viewModel);

  final GameViewModel viewModel;

  /// Create a copy of HexConquestState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HexConquestPlayingStateCopyWith<HexConquestPlayingState> get copyWith =>
      _$HexConquestPlayingStateCopyWithImpl<HexConquestPlayingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HexConquestPlayingState &&
            (identical(other.viewModel, viewModel) || other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @override
  String toString() {
    return 'HexConquestState.playing(viewModel: $viewModel)';
  }
}

/// @nodoc
abstract mixin class $HexConquestPlayingStateCopyWith<$Res>
    implements $HexConquestStateCopyWith<$Res> {
  factory $HexConquestPlayingStateCopyWith(
          HexConquestPlayingState value, $Res Function(HexConquestPlayingState) _then) =
      _$HexConquestPlayingStateCopyWithImpl;
  @useResult
  $Res call({GameViewModel viewModel});
}

/// @nodoc
class _$HexConquestPlayingStateCopyWithImpl<$Res>
    implements $HexConquestPlayingStateCopyWith<$Res> {
  _$HexConquestPlayingStateCopyWithImpl(this._self, this._then);

  final HexConquestPlayingState _self;
  final $Res Function(HexConquestPlayingState) _then;

  /// Create a copy of HexConquestState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(HexConquestPlayingState(
      null == viewModel
          ? _self.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as GameViewModel,
    ));
  }
}

// dart format on
