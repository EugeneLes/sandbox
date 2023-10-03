// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sources_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SourcesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) favorite,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? favorite,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? favorite,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourcesFavoriteEvent value) favorite,
    required TResult Function(_SourcesLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesFavoriteEvent value)? favorite,
    TResult? Function(_SourcesLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesFavoriteEvent value)? favorite,
    TResult Function(_SourcesLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcesEventCopyWith<$Res> {
  factory $SourcesEventCopyWith(
          SourcesEvent value, $Res Function(SourcesEvent) then) =
      _$SourcesEventCopyWithImpl<$Res, SourcesEvent>;
}

/// @nodoc
class _$SourcesEventCopyWithImpl<$Res, $Val extends SourcesEvent>
    implements $SourcesEventCopyWith<$Res> {
  _$SourcesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SourcesFavoriteEventCopyWith<$Res> {
  factory _$$_SourcesFavoriteEventCopyWith(_$_SourcesFavoriteEvent value,
          $Res Function(_$_SourcesFavoriteEvent) then) =
      __$$_SourcesFavoriteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$$_SourcesFavoriteEventCopyWithImpl<$Res>
    extends _$SourcesEventCopyWithImpl<$Res, _$_SourcesFavoriteEvent>
    implements _$$_SourcesFavoriteEventCopyWith<$Res> {
  __$$_SourcesFavoriteEventCopyWithImpl(_$_SourcesFavoriteEvent _value,
      $Res Function(_$_SourcesFavoriteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_$_SourcesFavoriteEvent(
      null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SourcesFavoriteEvent implements _SourcesFavoriteEvent {
  const _$_SourcesFavoriteEvent(this.articleId);

  @override
  final String articleId;

  @override
  String toString() {
    return 'SourcesEvent.favorite(articleId: $articleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourcesFavoriteEvent &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourcesFavoriteEventCopyWith<_$_SourcesFavoriteEvent> get copyWith =>
      __$$_SourcesFavoriteEventCopyWithImpl<_$_SourcesFavoriteEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) favorite,
    required TResult Function() load,
  }) {
    return favorite(articleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? favorite,
    TResult? Function()? load,
  }) {
    return favorite?.call(articleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? favorite,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(articleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourcesFavoriteEvent value) favorite,
    required TResult Function(_SourcesLoadEvent value) load,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesFavoriteEvent value)? favorite,
    TResult? Function(_SourcesLoadEvent value)? load,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesFavoriteEvent value)? favorite,
    TResult Function(_SourcesLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _SourcesFavoriteEvent implements SourcesEvent {
  const factory _SourcesFavoriteEvent(final String articleId) =
      _$_SourcesFavoriteEvent;

  String get articleId;
  @JsonKey(ignore: true)
  _$$_SourcesFavoriteEventCopyWith<_$_SourcesFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SourcesLoadEventCopyWith<$Res> {
  factory _$$_SourcesLoadEventCopyWith(
          _$_SourcesLoadEvent value, $Res Function(_$_SourcesLoadEvent) then) =
      __$$_SourcesLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SourcesLoadEventCopyWithImpl<$Res>
    extends _$SourcesEventCopyWithImpl<$Res, _$_SourcesLoadEvent>
    implements _$$_SourcesLoadEventCopyWith<$Res> {
  __$$_SourcesLoadEventCopyWithImpl(
      _$_SourcesLoadEvent _value, $Res Function(_$_SourcesLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SourcesLoadEvent implements _SourcesLoadEvent {
  const _$_SourcesLoadEvent();

  @override
  String toString() {
    return 'SourcesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SourcesLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String articleId) favorite,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String articleId)? favorite,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String articleId)? favorite,
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
    required TResult Function(_SourcesFavoriteEvent value) favorite,
    required TResult Function(_SourcesLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesFavoriteEvent value)? favorite,
    TResult? Function(_SourcesLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesFavoriteEvent value)? favorite,
    TResult Function(_SourcesLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _SourcesLoadEvent implements SourcesEvent {
  const factory _SourcesLoadEvent() = _$_SourcesLoadEvent;
}

/// @nodoc
mixin _$SourcesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SourcesViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SourcesViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SourcesViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourcesInitialState value) initial,
    required TResult Function(_SourcesLoadingState value) loading,
    required TResult Function(_SourcesLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesInitialState value)? initial,
    TResult? Function(_SourcesLoadingState value)? loading,
    TResult? Function(_SourcesLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesInitialState value)? initial,
    TResult Function(_SourcesLoadingState value)? loading,
    TResult Function(_SourcesLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourcesStateCopyWith<$Res> {
  factory $SourcesStateCopyWith(
          SourcesState value, $Res Function(SourcesState) then) =
      _$SourcesStateCopyWithImpl<$Res, SourcesState>;
}

/// @nodoc
class _$SourcesStateCopyWithImpl<$Res, $Val extends SourcesState>
    implements $SourcesStateCopyWith<$Res> {
  _$SourcesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SourcesInitialStateCopyWith<$Res> {
  factory _$$_SourcesInitialStateCopyWith(_$_SourcesInitialState value,
          $Res Function(_$_SourcesInitialState) then) =
      __$$_SourcesInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SourcesInitialStateCopyWithImpl<$Res>
    extends _$SourcesStateCopyWithImpl<$Res, _$_SourcesInitialState>
    implements _$$_SourcesInitialStateCopyWith<$Res> {
  __$$_SourcesInitialStateCopyWithImpl(_$_SourcesInitialState _value,
      $Res Function(_$_SourcesInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SourcesInitialState implements _SourcesInitialState {
  const _$_SourcesInitialState();

  @override
  String toString() {
    return 'SourcesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SourcesInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SourcesViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SourcesViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SourcesViewModel viewModel)? loaded,
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
    required TResult Function(_SourcesInitialState value) initial,
    required TResult Function(_SourcesLoadingState value) loading,
    required TResult Function(_SourcesLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesInitialState value)? initial,
    TResult? Function(_SourcesLoadingState value)? loading,
    TResult? Function(_SourcesLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesInitialState value)? initial,
    TResult Function(_SourcesLoadingState value)? loading,
    TResult Function(_SourcesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SourcesInitialState implements SourcesState {
  const factory _SourcesInitialState() = _$_SourcesInitialState;
}

/// @nodoc
abstract class _$$_SourcesLoadingStateCopyWith<$Res> {
  factory _$$_SourcesLoadingStateCopyWith(_$_SourcesLoadingState value,
          $Res Function(_$_SourcesLoadingState) then) =
      __$$_SourcesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SourcesLoadingStateCopyWithImpl<$Res>
    extends _$SourcesStateCopyWithImpl<$Res, _$_SourcesLoadingState>
    implements _$$_SourcesLoadingStateCopyWith<$Res> {
  __$$_SourcesLoadingStateCopyWithImpl(_$_SourcesLoadingState _value,
      $Res Function(_$_SourcesLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SourcesLoadingState implements _SourcesLoadingState {
  const _$_SourcesLoadingState();

  @override
  String toString() {
    return 'SourcesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SourcesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SourcesViewModel viewModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SourcesViewModel viewModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SourcesViewModel viewModel)? loaded,
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
    required TResult Function(_SourcesInitialState value) initial,
    required TResult Function(_SourcesLoadingState value) loading,
    required TResult Function(_SourcesLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesInitialState value)? initial,
    TResult? Function(_SourcesLoadingState value)? loading,
    TResult? Function(_SourcesLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesInitialState value)? initial,
    TResult Function(_SourcesLoadingState value)? loading,
    TResult Function(_SourcesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SourcesLoadingState implements SourcesState {
  const factory _SourcesLoadingState() = _$_SourcesLoadingState;
}

/// @nodoc
abstract class _$$_SourcesLoadedStateCopyWith<$Res> {
  factory _$$_SourcesLoadedStateCopyWith(_$_SourcesLoadedState value,
          $Res Function(_$_SourcesLoadedState) then) =
      __$$_SourcesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({SourcesViewModel viewModel});
}

/// @nodoc
class __$$_SourcesLoadedStateCopyWithImpl<$Res>
    extends _$SourcesStateCopyWithImpl<$Res, _$_SourcesLoadedState>
    implements _$$_SourcesLoadedStateCopyWith<$Res> {
  __$$_SourcesLoadedStateCopyWithImpl(
      _$_SourcesLoadedState _value, $Res Function(_$_SourcesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$_SourcesLoadedState(
      null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as SourcesViewModel,
    ));
  }
}

/// @nodoc

class _$_SourcesLoadedState implements _SourcesLoadedState {
  const _$_SourcesLoadedState(this.viewModel);

  @override
  final SourcesViewModel viewModel;

  @override
  String toString() {
    return 'SourcesState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SourcesLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SourcesLoadedStateCopyWith<_$_SourcesLoadedState> get copyWith =>
      __$$_SourcesLoadedStateCopyWithImpl<_$_SourcesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SourcesViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SourcesViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SourcesViewModel viewModel)? loaded,
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
    required TResult Function(_SourcesInitialState value) initial,
    required TResult Function(_SourcesLoadingState value) loading,
    required TResult Function(_SourcesLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourcesInitialState value)? initial,
    TResult? Function(_SourcesLoadingState value)? loading,
    TResult? Function(_SourcesLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourcesInitialState value)? initial,
    TResult Function(_SourcesLoadingState value)? loading,
    TResult Function(_SourcesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _SourcesLoadedState implements SourcesState {
  const factory _SourcesLoadedState(final SourcesViewModel viewModel) =
      _$_SourcesLoadedState;

  SourcesViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$_SourcesLoadedStateCopyWith<_$_SourcesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
