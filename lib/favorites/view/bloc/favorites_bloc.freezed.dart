// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsArticleViewModel article) favorite,
    required TResult Function(NewsArticleViewModel article) unfavorite,
    required TResult Function() load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsArticleViewModel article)? favorite,
    TResult? Function(NewsArticleViewModel article)? unfavorite,
    TResult? Function()? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsArticleViewModel article)? favorite,
    TResult Function(NewsArticleViewModel article)? unfavorite,
    TResult Function()? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteEvent value) favorite,
    required TResult Function(_UnfavoriteEvent value) unfavorite,
    required TResult Function(_FavoritesLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteEvent value)? favorite,
    TResult? Function(_UnfavoriteEvent value)? unfavorite,
    TResult? Function(_FavoritesLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteEvent value)? favorite,
    TResult Function(_UnfavoriteEvent value)? unfavorite,
    TResult Function(_FavoritesLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FavoriteEventCopyWith<$Res> {
  factory _$$_FavoriteEventCopyWith(
          _$_FavoriteEvent value, $Res Function(_$_FavoriteEvent) then) =
      __$$_FavoriteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsArticleViewModel article});
}

/// @nodoc
class __$$_FavoriteEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_FavoriteEvent>
    implements _$$_FavoriteEventCopyWith<$Res> {
  __$$_FavoriteEventCopyWithImpl(
      _$_FavoriteEvent _value, $Res Function(_$_FavoriteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$_FavoriteEvent(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as NewsArticleViewModel,
    ));
  }
}

/// @nodoc

class _$_FavoriteEvent implements _FavoriteEvent {
  const _$_FavoriteEvent(this.article);

  @override
  final NewsArticleViewModel article;

  @override
  String toString() {
    return 'FavoritesEvent.favorite(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoriteEvent &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoriteEventCopyWith<_$_FavoriteEvent> get copyWith =>
      __$$_FavoriteEventCopyWithImpl<_$_FavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsArticleViewModel article) favorite,
    required TResult Function(NewsArticleViewModel article) unfavorite,
    required TResult Function() load,
  }) {
    return favorite(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsArticleViewModel article)? favorite,
    TResult? Function(NewsArticleViewModel article)? unfavorite,
    TResult? Function()? load,
  }) {
    return favorite?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsArticleViewModel article)? favorite,
    TResult Function(NewsArticleViewModel article)? unfavorite,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteEvent value) favorite,
    required TResult Function(_UnfavoriteEvent value) unfavorite,
    required TResult Function(_FavoritesLoadEvent value) load,
  }) {
    return favorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteEvent value)? favorite,
    TResult? Function(_UnfavoriteEvent value)? unfavorite,
    TResult? Function(_FavoritesLoadEvent value)? load,
  }) {
    return favorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteEvent value)? favorite,
    TResult Function(_UnfavoriteEvent value)? unfavorite,
    TResult Function(_FavoritesLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (favorite != null) {
      return favorite(this);
    }
    return orElse();
  }
}

abstract class _FavoriteEvent implements FavoritesEvent {
  const factory _FavoriteEvent(final NewsArticleViewModel article) =
      _$_FavoriteEvent;

  NewsArticleViewModel get article;
  @JsonKey(ignore: true)
  _$$_FavoriteEventCopyWith<_$_FavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnfavoriteEventCopyWith<$Res> {
  factory _$$_UnfavoriteEventCopyWith(
          _$_UnfavoriteEvent value, $Res Function(_$_UnfavoriteEvent) then) =
      __$$_UnfavoriteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({NewsArticleViewModel article});
}

/// @nodoc
class __$$_UnfavoriteEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_UnfavoriteEvent>
    implements _$$_UnfavoriteEventCopyWith<$Res> {
  __$$_UnfavoriteEventCopyWithImpl(
      _$_UnfavoriteEvent _value, $Res Function(_$_UnfavoriteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? article = null,
  }) {
    return _then(_$_UnfavoriteEvent(
      null == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as NewsArticleViewModel,
    ));
  }
}

/// @nodoc

class _$_UnfavoriteEvent implements _UnfavoriteEvent {
  const _$_UnfavoriteEvent(this.article);

  @override
  final NewsArticleViewModel article;

  @override
  String toString() {
    return 'FavoritesEvent.unfavorite(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnfavoriteEvent &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnfavoriteEventCopyWith<_$_UnfavoriteEvent> get copyWith =>
      __$$_UnfavoriteEventCopyWithImpl<_$_UnfavoriteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsArticleViewModel article) favorite,
    required TResult Function(NewsArticleViewModel article) unfavorite,
    required TResult Function() load,
  }) {
    return unfavorite(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsArticleViewModel article)? favorite,
    TResult? Function(NewsArticleViewModel article)? unfavorite,
    TResult? Function()? load,
  }) {
    return unfavorite?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsArticleViewModel article)? favorite,
    TResult Function(NewsArticleViewModel article)? unfavorite,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    if (unfavorite != null) {
      return unfavorite(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoriteEvent value) favorite,
    required TResult Function(_UnfavoriteEvent value) unfavorite,
    required TResult Function(_FavoritesLoadEvent value) load,
  }) {
    return unfavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteEvent value)? favorite,
    TResult? Function(_UnfavoriteEvent value)? unfavorite,
    TResult? Function(_FavoritesLoadEvent value)? load,
  }) {
    return unfavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteEvent value)? favorite,
    TResult Function(_UnfavoriteEvent value)? unfavorite,
    TResult Function(_FavoritesLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (unfavorite != null) {
      return unfavorite(this);
    }
    return orElse();
  }
}

abstract class _UnfavoriteEvent implements FavoritesEvent {
  const factory _UnfavoriteEvent(final NewsArticleViewModel article) =
      _$_UnfavoriteEvent;

  NewsArticleViewModel get article;
  @JsonKey(ignore: true)
  _$$_UnfavoriteEventCopyWith<_$_UnfavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FavoritesLoadEventCopyWith<$Res> {
  factory _$$_FavoritesLoadEventCopyWith(_$_FavoritesLoadEvent value,
          $Res Function(_$_FavoritesLoadEvent) then) =
      __$$_FavoritesLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoritesLoadEventCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_FavoritesLoadEvent>
    implements _$$_FavoritesLoadEventCopyWith<$Res> {
  __$$_FavoritesLoadEventCopyWithImpl(
      _$_FavoritesLoadEvent _value, $Res Function(_$_FavoritesLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoritesLoadEvent implements _FavoritesLoadEvent {
  const _$_FavoritesLoadEvent();

  @override
  String toString() {
    return 'FavoritesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoritesLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewsArticleViewModel article) favorite,
    required TResult Function(NewsArticleViewModel article) unfavorite,
    required TResult Function() load,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewsArticleViewModel article)? favorite,
    TResult? Function(NewsArticleViewModel article)? unfavorite,
    TResult? Function()? load,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewsArticleViewModel article)? favorite,
    TResult Function(NewsArticleViewModel article)? unfavorite,
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
    required TResult Function(_FavoriteEvent value) favorite,
    required TResult Function(_UnfavoriteEvent value) unfavorite,
    required TResult Function(_FavoritesLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoriteEvent value)? favorite,
    TResult? Function(_UnfavoriteEvent value)? unfavorite,
    TResult? Function(_FavoritesLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoriteEvent value)? favorite,
    TResult Function(_UnfavoriteEvent value)? unfavorite,
    TResult Function(_FavoritesLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoadEvent implements FavoritesEvent {
  const factory _FavoritesLoadEvent() = _$_FavoritesLoadEvent;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleViewModel> articles) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleViewModel> articles)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsArticleViewModel> articles)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesInitialState value) initial,
    required TResult Function(_FavoritesLoadingState value) loading,
    required TResult Function(_FavoritesLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitialState value)? initial,
    TResult? Function(_FavoritesLoadingState value)? loading,
    TResult? Function(_FavoritesLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitialState value)? initial,
    TResult Function(_FavoritesLoadingState value)? loading,
    TResult Function(_FavoritesLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_FavoritesInitialStateCopyWith<$Res> {
  factory _$$_FavoritesInitialStateCopyWith(_$_FavoritesInitialState value,
          $Res Function(_$_FavoritesInitialState) then) =
      __$$_FavoritesInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoritesInitialStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$_FavoritesInitialState>
    implements _$$_FavoritesInitialStateCopyWith<$Res> {
  __$$_FavoritesInitialStateCopyWithImpl(_$_FavoritesInitialState _value,
      $Res Function(_$_FavoritesInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoritesInitialState implements _FavoritesInitialState {
  const _$_FavoritesInitialState();

  @override
  String toString() {
    return 'FavoritesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoritesInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleViewModel> articles) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleViewModel> articles)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsArticleViewModel> articles)? loaded,
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
    required TResult Function(_FavoritesInitialState value) initial,
    required TResult Function(_FavoritesLoadingState value) loading,
    required TResult Function(_FavoritesLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitialState value)? initial,
    TResult? Function(_FavoritesLoadingState value)? loading,
    TResult? Function(_FavoritesLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitialState value)? initial,
    TResult Function(_FavoritesLoadingState value)? loading,
    TResult Function(_FavoritesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _FavoritesInitialState implements FavoritesState {
  const factory _FavoritesInitialState() = _$_FavoritesInitialState;
}

/// @nodoc
abstract class _$$_FavoritesLoadingStateCopyWith<$Res> {
  factory _$$_FavoritesLoadingStateCopyWith(_$_FavoritesLoadingState value,
          $Res Function(_$_FavoritesLoadingState) then) =
      __$$_FavoritesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FavoritesLoadingStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$_FavoritesLoadingState>
    implements _$$_FavoritesLoadingStateCopyWith<$Res> {
  __$$_FavoritesLoadingStateCopyWithImpl(_$_FavoritesLoadingState _value,
      $Res Function(_$_FavoritesLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FavoritesLoadingState implements _FavoritesLoadingState {
  const _$_FavoritesLoadingState();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FavoritesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleViewModel> articles) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleViewModel> articles)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsArticleViewModel> articles)? loaded,
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
    required TResult Function(_FavoritesInitialState value) initial,
    required TResult Function(_FavoritesLoadingState value) loading,
    required TResult Function(_FavoritesLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitialState value)? initial,
    TResult? Function(_FavoritesLoadingState value)? loading,
    TResult? Function(_FavoritesLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitialState value)? initial,
    TResult Function(_FavoritesLoadingState value)? loading,
    TResult Function(_FavoritesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoadingState implements FavoritesState {
  const factory _FavoritesLoadingState() = _$_FavoritesLoadingState;
}

/// @nodoc
abstract class _$$_FavoritesLoadedStateCopyWith<$Res> {
  factory _$$_FavoritesLoadedStateCopyWith(_$_FavoritesLoadedState value,
          $Res Function(_$_FavoritesLoadedState) then) =
      __$$_FavoritesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsArticleViewModel> articles});
}

/// @nodoc
class __$$_FavoritesLoadedStateCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$_FavoritesLoadedState>
    implements _$$_FavoritesLoadedStateCopyWith<$Res> {
  __$$_FavoritesLoadedStateCopyWithImpl(_$_FavoritesLoadedState _value,
      $Res Function(_$_FavoritesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$_FavoritesLoadedState(
      null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticleViewModel>,
    ));
  }
}

/// @nodoc

class _$_FavoritesLoadedState implements _FavoritesLoadedState {
  const _$_FavoritesLoadedState(final List<NewsArticleViewModel> articles)
      : _articles = articles;

  final List<NewsArticleViewModel> _articles;
  @override
  List<NewsArticleViewModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'FavoritesState.loaded(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FavoritesLoadedState &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FavoritesLoadedStateCopyWith<_$_FavoritesLoadedState> get copyWith =>
      __$$_FavoritesLoadedStateCopyWithImpl<_$_FavoritesLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsArticleViewModel> articles) loaded,
  }) {
    return loaded(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsArticleViewModel> articles)? loaded,
  }) {
    return loaded?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsArticleViewModel> articles)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FavoritesInitialState value) initial,
    required TResult Function(_FavoritesLoadingState value) loading,
    required TResult Function(_FavoritesLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FavoritesInitialState value)? initial,
    TResult? Function(_FavoritesLoadingState value)? loading,
    TResult? Function(_FavoritesLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FavoritesInitialState value)? initial,
    TResult Function(_FavoritesLoadingState value)? loading,
    TResult Function(_FavoritesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _FavoritesLoadedState implements FavoritesState {
  const factory _FavoritesLoadedState(
      final List<NewsArticleViewModel> articles) = _$_FavoritesLoadedState;

  List<NewsArticleViewModel> get articles;
  @JsonKey(ignore: true)
  _$$_FavoritesLoadedStateCopyWith<_$_FavoritesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
