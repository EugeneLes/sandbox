// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  String get source => throw _privateConstructorUsedError;
  bool get skipLoader => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, bool skipLoader) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String source, bool skipLoader)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, bool skipLoader)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsEventCopyWith<NewsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
  @useResult
  $Res call({String source, bool skipLoader});
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? skipLoader = null,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      skipLoader: null == skipLoader
          ? _value.skipLoader
          : skipLoader // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsLoadEventCopyWith<$Res>
    implements $NewsEventCopyWith<$Res> {
  factory _$$_NewsLoadEventCopyWith(
          _$_NewsLoadEvent value, $Res Function(_$_NewsLoadEvent) then) =
      __$$_NewsLoadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, bool skipLoader});
}

/// @nodoc
class __$$_NewsLoadEventCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_NewsLoadEvent>
    implements _$$_NewsLoadEventCopyWith<$Res> {
  __$$_NewsLoadEventCopyWithImpl(
      _$_NewsLoadEvent _value, $Res Function(_$_NewsLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? skipLoader = null,
  }) {
    return _then(_$_NewsLoadEvent(
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      skipLoader: null == skipLoader
          ? _value.skipLoader
          : skipLoader // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NewsLoadEvent implements _NewsLoadEvent {
  const _$_NewsLoadEvent(this.source, {this.skipLoader = false});

  @override
  final String source;
  @override
  @JsonKey()
  final bool skipLoader;

  @override
  String toString() {
    return 'NewsEvent.load(source: $source, skipLoader: $skipLoader)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsLoadEvent &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.skipLoader, skipLoader) ||
                other.skipLoader == skipLoader));
  }

  @override
  int get hashCode => Object.hash(runtimeType, source, skipLoader);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsLoadEventCopyWith<_$_NewsLoadEvent> get copyWith =>
      __$$_NewsLoadEventCopyWithImpl<_$_NewsLoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String source, bool skipLoader) load,
  }) {
    return load(source, skipLoader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String source, bool skipLoader)? load,
  }) {
    return load?.call(source, skipLoader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String source, bool skipLoader)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(source, skipLoader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _NewsLoadEvent implements NewsEvent {
  const factory _NewsLoadEvent(final String source, {final bool skipLoader}) =
      _$_NewsLoadEvent;

  @override
  String get source;
  @override
  bool get skipLoader;
  @override
  @JsonKey(ignore: true)
  _$$_NewsLoadEventCopyWith<_$_NewsLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NewsInitialStateCopyWith<$Res> {
  factory _$$NewsInitialStateCopyWith(
          _$NewsInitialState value, $Res Function(_$NewsInitialState) then) =
      __$$NewsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsInitialStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsInitialState>
    implements _$$NewsInitialStateCopyWith<$Res> {
  __$$NewsInitialStateCopyWithImpl(
      _$NewsInitialState _value, $Res Function(_$NewsInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsInitialState implements NewsInitialState {
  const _$NewsInitialState();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
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
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewsInitialState implements NewsState {
  const factory NewsInitialState() = _$NewsInitialState;
}

/// @nodoc
abstract class _$$NewsLoadingStateCopyWith<$Res> {
  factory _$$NewsLoadingStateCopyWith(
          _$NewsLoadingState value, $Res Function(_$NewsLoadingState) then) =
      __$$NewsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsLoadingStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadingState>
    implements _$$NewsLoadingStateCopyWith<$Res> {
  __$$NewsLoadingStateCopyWithImpl(
      _$NewsLoadingState _value, $Res Function(_$NewsLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewsLoadingState implements NewsLoadingState {
  const _$NewsLoadingState();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
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
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewsLoadingState implements NewsState {
  const factory NewsLoadingState() = _$NewsLoadingState;
}

/// @nodoc
abstract class _$$NewsLoadedStateCopyWith<$Res> {
  factory _$$NewsLoadedStateCopyWith(
          _$NewsLoadedState value, $Res Function(_$NewsLoadedState) then) =
      __$$NewsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsViewModel viewModel});
}

/// @nodoc
class __$$NewsLoadedStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadedState>
    implements _$$NewsLoadedStateCopyWith<$Res> {
  __$$NewsLoadedStateCopyWithImpl(
      _$NewsLoadedState _value, $Res Function(_$NewsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewModel = null,
  }) {
    return _then(_$NewsLoadedState(
      null == viewModel
          ? _value.viewModel
          : viewModel // ignore: cast_nullable_to_non_nullable
              as NewsViewModel,
    ));
  }
}

/// @nodoc

class _$NewsLoadedState implements NewsLoadedState {
  const _$NewsLoadedState(this.viewModel);

  @override
  final NewsViewModel viewModel;

  @override
  String toString() {
    return 'NewsState.loaded(viewModel: $viewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsLoadedState &&
            (identical(other.viewModel, viewModel) ||
                other.viewModel == viewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, viewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsLoadedStateCopyWith<_$NewsLoadedState> get copyWith =>
      __$$NewsLoadedStateCopyWithImpl<_$NewsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NewsViewModel viewModel) loaded,
  }) {
    return loaded(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NewsViewModel viewModel)? loaded,
  }) {
    return loaded?.call(viewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NewsViewModel viewModel)? loaded,
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
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoadedState implements NewsState {
  const factory NewsLoadedState(final NewsViewModel viewModel) =
      _$NewsLoadedState;

  NewsViewModel get viewModel;
  @JsonKey(ignore: true)
  _$$NewsLoadedStateCopyWith<_$NewsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
