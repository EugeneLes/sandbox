// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'traffic_light_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TrafficLightEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) start,
    required TResult Function(String articleId) stop,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? start,
    TResult? Function(String articleId)? stop,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? start,
    TResult Function(String articleId)? stop,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightStartEvent value) start,
    required TResult Function(_TrafficLightStopEvent value) stop,
    required TResult Function(_TrafficLightLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightStartEvent value)? start,
    TResult? Function(_TrafficLightStopEvent value)? stop,
    TResult? Function(_TrafficLightLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightStartEvent value)? start,
    TResult Function(_TrafficLightStopEvent value)? stop,
    TResult Function(_TrafficLightLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficLightEventCopyWith<$Res> {
  factory $TrafficLightEventCopyWith(
          TrafficLightEvent value, $Res Function(TrafficLightEvent) then) =
      _$TrafficLightEventCopyWithImpl<$Res, TrafficLightEvent>;
}

/// @nodoc
class _$TrafficLightEventCopyWithImpl<$Res, $Val extends TrafficLightEvent>
    implements $TrafficLightEventCopyWith<$Res> {
  _$TrafficLightEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TrafficLightStartEventCopyWith<$Res> {
  factory _$$_TrafficLightStartEventCopyWith(_$_TrafficLightStartEvent value,
          $Res Function(_$_TrafficLightStartEvent) then) =
      __$$_TrafficLightStartEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$$_TrafficLightStartEventCopyWithImpl<$Res>
    extends _$TrafficLightEventCopyWithImpl<$Res, _$_TrafficLightStartEvent>
    implements _$$_TrafficLightStartEventCopyWith<$Res> {
  __$$_TrafficLightStartEventCopyWithImpl(_$_TrafficLightStartEvent _value,
      $Res Function(_$_TrafficLightStartEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_$_TrafficLightStartEvent(
      null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrafficLightStartEvent implements _TrafficLightStartEvent {
  const _$_TrafficLightStartEvent(this.articleId);

  @override
  final String articleId;

  @override
  String toString() {
    return 'TrafficLightEvent.start(articleId: $articleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficLightStartEvent &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrafficLightStartEventCopyWith<_$_TrafficLightStartEvent> get copyWith =>
      __$$_TrafficLightStartEventCopyWithImpl<_$_TrafficLightStartEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) start,
    required TResult Function(String articleId) stop,
    required TResult Function() load,
  }) {
    return start(articleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? start,
    TResult? Function(String articleId)? stop,
    TResult? Function()? load,
  }) {
    return start?.call(articleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? start,
    TResult Function(String articleId)? stop,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(articleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightStartEvent value) start,
    required TResult Function(_TrafficLightStopEvent value) stop,
    required TResult Function(_TrafficLightLoadEvent value) load,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightStartEvent value)? start,
    TResult? Function(_TrafficLightStopEvent value)? stop,
    TResult? Function(_TrafficLightLoadEvent value)? load,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightStartEvent value)? start,
    TResult Function(_TrafficLightStopEvent value)? stop,
    TResult Function(_TrafficLightLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class _TrafficLightStartEvent implements TrafficLightEvent {
  const factory _TrafficLightStartEvent(final String articleId) =
      _$_TrafficLightStartEvent;

  String get articleId;
  @JsonKey(ignore: true)
  _$$_TrafficLightStartEventCopyWith<_$_TrafficLightStartEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TrafficLightStopEventCopyWith<$Res> {
  factory _$$_TrafficLightStopEventCopyWith(_$_TrafficLightStopEvent value,
          $Res Function(_$_TrafficLightStopEvent) then) =
      __$$_TrafficLightStopEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$$_TrafficLightStopEventCopyWithImpl<$Res>
    extends _$TrafficLightEventCopyWithImpl<$Res, _$_TrafficLightStopEvent>
    implements _$$_TrafficLightStopEventCopyWith<$Res> {
  __$$_TrafficLightStopEventCopyWithImpl(_$_TrafficLightStopEvent _value,
      $Res Function(_$_TrafficLightStopEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_$_TrafficLightStopEvent(
      null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TrafficLightStopEvent implements _TrafficLightStopEvent {
  const _$_TrafficLightStopEvent(this.articleId);

  @override
  final String articleId;

  @override
  String toString() {
    return 'TrafficLightEvent.stop(articleId: $articleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficLightStopEvent &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrafficLightStopEventCopyWith<_$_TrafficLightStopEvent> get copyWith =>
      __$$_TrafficLightStopEventCopyWithImpl<_$_TrafficLightStopEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) start,
    required TResult Function(String articleId) stop,
    required TResult Function() load,
  }) {
    return stop(articleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? start,
    TResult? Function(String articleId)? stop,
    TResult? Function()? load,
  }) {
    return stop?.call(articleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? start,
    TResult Function(String articleId)? stop,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(articleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightStartEvent value) start,
    required TResult Function(_TrafficLightStopEvent value) stop,
    required TResult Function(_TrafficLightLoadEvent value) load,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightStartEvent value)? start,
    TResult? Function(_TrafficLightStopEvent value)? stop,
    TResult? Function(_TrafficLightLoadEvent value)? load,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightStartEvent value)? start,
    TResult Function(_TrafficLightStopEvent value)? stop,
    TResult Function(_TrafficLightLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _TrafficLightStopEvent implements TrafficLightEvent {
  const factory _TrafficLightStopEvent(final String articleId) =
      _$_TrafficLightStopEvent;

  String get articleId;
  @JsonKey(ignore: true)
  _$$_TrafficLightStopEventCopyWith<_$_TrafficLightStopEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TrafficLightLoadEventCopyWith<$Res> {
  factory _$$_TrafficLightLoadEventCopyWith(_$_TrafficLightLoadEvent value,
          $Res Function(_$_TrafficLightLoadEvent) then) =
      __$$_TrafficLightLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TrafficLightLoadEventCopyWithImpl<$Res>
    extends _$TrafficLightEventCopyWithImpl<$Res, _$_TrafficLightLoadEvent>
    implements _$$_TrafficLightLoadEventCopyWith<$Res> {
  __$$_TrafficLightLoadEventCopyWithImpl(_$_TrafficLightLoadEvent _value,
      $Res Function(_$_TrafficLightLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TrafficLightLoadEvent implements _TrafficLightLoadEvent {
  const _$_TrafficLightLoadEvent();

  @override
  String toString() {
    return 'TrafficLightEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TrafficLightLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) start,
    required TResult Function(String articleId) stop,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? start,
    TResult? Function(String articleId)? stop,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? start,
    TResult Function(String articleId)? stop,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightStartEvent value) start,
    required TResult Function(_TrafficLightStopEvent value) stop,
    required TResult Function(_TrafficLightLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightStartEvent value)? start,
    TResult? Function(_TrafficLightStopEvent value)? stop,
    TResult? Function(_TrafficLightLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightStartEvent value)? start,
    TResult Function(_TrafficLightStopEvent value)? stop,
    TResult Function(_TrafficLightLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _TrafficLightLoadEvent implements TrafficLightEvent {
  const factory _TrafficLightLoadEvent() = _$_TrafficLightLoadEvent;
}

/// @nodoc
mixin _$TrafficLightState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrafficLightViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrafficLightViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrafficLightViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightInitialState value) initial,
    required TResult Function(_TrafficLightLoadingState value) loading,
    required TResult Function(_TrafficLightLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightInitialState value)? initial,
    TResult? Function(_TrafficLightLoadingState value)? loading,
    TResult? Function(_TrafficLightLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightInitialState value)? initial,
    TResult Function(_TrafficLightLoadingState value)? loading,
    TResult Function(_TrafficLightLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrafficLightStateCopyWith<$Res> {
  factory $TrafficLightStateCopyWith(
          TrafficLightState value, $Res Function(TrafficLightState) then) =
      _$TrafficLightStateCopyWithImpl<$Res, TrafficLightState>;
}

/// @nodoc
class _$TrafficLightStateCopyWithImpl<$Res, $Val extends TrafficLightState>
    implements $TrafficLightStateCopyWith<$Res> {
  _$TrafficLightStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TrafficLightInitialStateCopyWith<$Res> {
  factory _$$_TrafficLightInitialStateCopyWith(
          _$_TrafficLightInitialState value,
          $Res Function(_$_TrafficLightInitialState) then) =
      __$$_TrafficLightInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TrafficLightInitialStateCopyWithImpl<$Res>
    extends _$TrafficLightStateCopyWithImpl<$Res, _$_TrafficLightInitialState>
    implements _$$_TrafficLightInitialStateCopyWith<$Res> {
  __$$_TrafficLightInitialStateCopyWithImpl(_$_TrafficLightInitialState _value,
      $Res Function(_$_TrafficLightInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TrafficLightInitialState implements _TrafficLightInitialState {
  const _$_TrafficLightInitialState();

  @override
  String toString() {
    return 'TrafficLightState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficLightInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrafficLightViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrafficLightViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrafficLightViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightInitialState value) initial,
    required TResult Function(_TrafficLightLoadingState value) loading,
    required TResult Function(_TrafficLightLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightInitialState value)? initial,
    TResult? Function(_TrafficLightLoadingState value)? loading,
    TResult? Function(_TrafficLightLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightInitialState value)? initial,
    TResult Function(_TrafficLightLoadingState value)? loading,
    TResult Function(_TrafficLightLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TrafficLightInitialState implements TrafficLightState {
  const factory _TrafficLightInitialState() = _$_TrafficLightInitialState;
}

/// @nodoc
abstract class _$$_TrafficLightLoadingStateCopyWith<$Res> {
  factory _$$_TrafficLightLoadingStateCopyWith(
          _$_TrafficLightLoadingState value,
          $Res Function(_$_TrafficLightLoadingState) then) =
      __$$_TrafficLightLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TrafficLightLoadingStateCopyWithImpl<$Res>
    extends _$TrafficLightStateCopyWithImpl<$Res, _$_TrafficLightLoadingState>
    implements _$$_TrafficLightLoadingStateCopyWith<$Res> {
  __$$_TrafficLightLoadingStateCopyWithImpl(_$_TrafficLightLoadingState _value,
      $Res Function(_$_TrafficLightLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TrafficLightLoadingState implements _TrafficLightLoadingState {
  const _$_TrafficLightLoadingState();

  @override
  String toString() {
    return 'TrafficLightState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficLightLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrafficLightViewModel viewModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrafficLightViewModel viewModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrafficLightViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightInitialState value) initial,
    required TResult Function(_TrafficLightLoadingState value) loading,
    required TResult Function(_TrafficLightLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightInitialState value)? initial,
    TResult? Function(_TrafficLightLoadingState value)? loading,
    TResult? Function(_TrafficLightLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightInitialState value)? initial,
    TResult Function(_TrafficLightLoadingState value)? loading,
    TResult Function(_TrafficLightLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TrafficLightLoadingState implements TrafficLightState {
  const factory _TrafficLightLoadingState() = _$_TrafficLightLoadingState;
}

/// @nodoc
abstract class _$$_TrafficLightLoadedStateCopyWith<$Res> {
  factory _$$_TrafficLightLoadedStateCopyWith(_$_TrafficLightLoadedState value,
          $Res Function(_$_TrafficLightLoadedState) then) =
      __$$_TrafficLightLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({TrafficLightViewModel viewModel});
}

/// @nodoc
class __$$_TrafficLightLoadedStateCopyWithImpl<$Res>
    extends _$TrafficLightStateCopyWithImpl<$Res, _$_TrafficLightLoadedState>
    implements _$$_TrafficLightLoadedStateCopyWith<$Res> {
  __$$_TrafficLightLoadedStateCopyWithImpl(_$_TrafficLightLoadedState _value,
      $Res Function(_$_TrafficLightLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$_TrafficLightLoadedState(
      null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as TrafficLightViewModel,
    ));
  }
}

/// @nodoc

class _$_TrafficLightLoadedState implements _TrafficLightLoadedState {
  const _$_TrafficLightLoadedState(this.viewModel);

  @override
  final TrafficLightViewModel viewModel;

  @override
  String toString() {
    return 'TrafficLightState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TrafficLightLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrafficLightLoadedStateCopyWith<_$_TrafficLightLoadedState>
      get copyWith =>
          __$$_TrafficLightLoadedStateCopyWithImpl<_$_TrafficLightLoadedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(TrafficLightViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(TrafficLightViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(TrafficLightViewModel viewModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(viewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TrafficLightInitialState value) initial,
    required TResult Function(_TrafficLightLoadingState value) loading,
    required TResult Function(_TrafficLightLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TrafficLightInitialState value)? initial,
    TResult? Function(_TrafficLightLoadingState value)? loading,
    TResult? Function(_TrafficLightLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TrafficLightInitialState value)? initial,
    TResult Function(_TrafficLightLoadingState value)? loading,
    TResult Function(_TrafficLightLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TrafficLightLoadedState implements TrafficLightState {
  const factory _TrafficLightLoadedState(
      final TrafficLightViewModel viewModel) = _$_TrafficLightLoadedState;

  TrafficLightViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$_TrafficLightLoadedStateCopyWith<_$_TrafficLightLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
