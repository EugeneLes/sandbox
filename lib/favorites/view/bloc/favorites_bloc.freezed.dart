// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoritesEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritesEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesEvent()';
  }
}

/// @nodoc
class $FavoritesEventCopyWith<$Res> {
  $FavoritesEventCopyWith(FavoritesEvent _, $Res Function(FavoritesEvent) __);
}

/// Adds pattern-matching-related methods to [FavoritesEvent].
extension FavoritesEventPatterns on FavoritesEvent {
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
    TResult Function(_FavoriteEvent value)? favorite,
    TResult Function(_UnfavoriteEvent value)? unfavorite,
    TResult Function(_FavoritesLoadEvent value)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FavoriteEvent() when favorite != null:
        return favorite(_that);
      case _UnfavoriteEvent() when unfavorite != null:
        return unfavorite(_that);
      case _FavoritesLoadEvent() when load != null:
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
    required TResult Function(_FavoriteEvent value) favorite,
    required TResult Function(_UnfavoriteEvent value) unfavorite,
    required TResult Function(_FavoritesLoadEvent value) load,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoriteEvent():
        return favorite(_that);
      case _UnfavoriteEvent():
        return unfavorite(_that);
      case _FavoritesLoadEvent():
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
    TResult? Function(_FavoriteEvent value)? favorite,
    TResult? Function(_UnfavoriteEvent value)? unfavorite,
    TResult? Function(_FavoritesLoadEvent value)? load,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoriteEvent() when favorite != null:
        return favorite(_that);
      case _UnfavoriteEvent() when unfavorite != null:
        return unfavorite(_that);
      case _FavoritesLoadEvent() when load != null:
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
    TResult Function(NewsArticleViewModel article)? favorite,
    TResult Function(NewsArticleViewModel article)? unfavorite,
    TResult Function()? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FavoriteEvent() when favorite != null:
        return favorite(_that.article);
      case _UnfavoriteEvent() when unfavorite != null:
        return unfavorite(_that.article);
      case _FavoritesLoadEvent() when load != null:
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
    required TResult Function(NewsArticleViewModel article) favorite,
    required TResult Function(NewsArticleViewModel article) unfavorite,
    required TResult Function() load,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoriteEvent():
        return favorite(_that.article);
      case _UnfavoriteEvent():
        return unfavorite(_that.article);
      case _FavoritesLoadEvent():
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
    TResult? Function(NewsArticleViewModel article)? favorite,
    TResult? Function(NewsArticleViewModel article)? unfavorite,
    TResult? Function()? load,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoriteEvent() when favorite != null:
        return favorite(_that.article);
      case _UnfavoriteEvent() when unfavorite != null:
        return unfavorite(_that.article);
      case _FavoritesLoadEvent() when load != null:
        return load();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FavoriteEvent implements FavoritesEvent {
  const _FavoriteEvent(this.article);

  final NewsArticleViewModel article;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoriteEventCopyWith<_FavoriteEvent> get copyWith =>
      __$FavoriteEventCopyWithImpl<_FavoriteEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteEvent &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @override
  String toString() {
    return 'FavoritesEvent.favorite(article: $article)';
  }
}

/// @nodoc
abstract mixin class _$FavoriteEventCopyWith<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  factory _$FavoriteEventCopyWith(
          _FavoriteEvent value, $Res Function(_FavoriteEvent) _then) =
      __$FavoriteEventCopyWithImpl;
  @useResult
  $Res call({NewsArticleViewModel article});
}

/// @nodoc
class __$FavoriteEventCopyWithImpl<$Res>
    implements _$FavoriteEventCopyWith<$Res> {
  __$FavoriteEventCopyWithImpl(this._self, this._then);

  final _FavoriteEvent _self;
  final $Res Function(_FavoriteEvent) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? article = null,
  }) {
    return _then(_FavoriteEvent(
      null == article
          ? _self.article
          : article // ignore: cast_nullable_to_non_nullable
              as NewsArticleViewModel,
    ));
  }
}

/// @nodoc

class _UnfavoriteEvent implements FavoritesEvent {
  const _UnfavoriteEvent(this.article);

  final NewsArticleViewModel article;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UnfavoriteEventCopyWith<_UnfavoriteEvent> get copyWith =>
      __$UnfavoriteEventCopyWithImpl<_UnfavoriteEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnfavoriteEvent &&
            (identical(other.article, article) || other.article == article));
  }

  @override
  int get hashCode => Object.hash(runtimeType, article);

  @override
  String toString() {
    return 'FavoritesEvent.unfavorite(article: $article)';
  }
}

/// @nodoc
abstract mixin class _$UnfavoriteEventCopyWith<$Res>
    implements $FavoritesEventCopyWith<$Res> {
  factory _$UnfavoriteEventCopyWith(
          _UnfavoriteEvent value, $Res Function(_UnfavoriteEvent) _then) =
      __$UnfavoriteEventCopyWithImpl;
  @useResult
  $Res call({NewsArticleViewModel article});
}

/// @nodoc
class __$UnfavoriteEventCopyWithImpl<$Res>
    implements _$UnfavoriteEventCopyWith<$Res> {
  __$UnfavoriteEventCopyWithImpl(this._self, this._then);

  final _UnfavoriteEvent _self;
  final $Res Function(_UnfavoriteEvent) _then;

  /// Create a copy of FavoritesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? article = null,
  }) {
    return _then(_UnfavoriteEvent(
      null == article
          ? _self.article
          : article // ignore: cast_nullable_to_non_nullable
              as NewsArticleViewModel,
    ));
  }
}

/// @nodoc

class _FavoritesLoadEvent implements FavoritesEvent {
  const _FavoritesLoadEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FavoritesLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesEvent.load()';
  }
}

/// @nodoc
mixin _$FavoritesState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FavoritesState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesState()';
  }
}

/// @nodoc
class $FavoritesStateCopyWith<$Res> {
  $FavoritesStateCopyWith(FavoritesState _, $Res Function(FavoritesState) __);
}

/// Adds pattern-matching-related methods to [FavoritesState].
extension FavoritesStatePatterns on FavoritesState {
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
    TResult Function(_FavoritesInitialState value)? initial,
    TResult Function(_FavoritesLoadingState value)? loading,
    TResult Function(_FavoritesLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesInitialState() when initial != null:
        return initial(_that);
      case _FavoritesLoadingState() when loading != null:
        return loading(_that);
      case _FavoritesLoadedState() when loaded != null:
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
    required TResult Function(_FavoritesInitialState value) initial,
    required TResult Function(_FavoritesLoadingState value) loading,
    required TResult Function(_FavoritesLoadedState value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesInitialState():
        return initial(_that);
      case _FavoritesLoadingState():
        return loading(_that);
      case _FavoritesLoadedState():
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
    TResult? Function(_FavoritesInitialState value)? initial,
    TResult? Function(_FavoritesLoadingState value)? loading,
    TResult? Function(_FavoritesLoadedState value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesInitialState() when initial != null:
        return initial(_that);
      case _FavoritesLoadingState() when loading != null:
        return loading(_that);
      case _FavoritesLoadedState() when loaded != null:
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
    TResult Function(List<NewsArticleViewModel> articles)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesInitialState() when initial != null:
        return initial();
      case _FavoritesLoadingState() when loading != null:
        return loading();
      case _FavoritesLoadedState() when loaded != null:
        return loaded(_that.articles);
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
    required TResult Function(List<NewsArticleViewModel> articles) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesInitialState():
        return initial();
      case _FavoritesLoadingState():
        return loading();
      case _FavoritesLoadedState():
        return loaded(_that.articles);
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
    TResult? Function(List<NewsArticleViewModel> articles)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case _FavoritesInitialState() when initial != null:
        return initial();
      case _FavoritesLoadingState() when loading != null:
        return loading();
      case _FavoritesLoadedState() when loaded != null:
        return loaded(_that.articles);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FavoritesInitialState implements FavoritesState {
  const _FavoritesInitialState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FavoritesInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesState.initial()';
  }
}

/// @nodoc

class _FavoritesLoadingState implements FavoritesState {
  const _FavoritesLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FavoritesLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }
}

/// @nodoc

class _FavoritesLoadedState implements FavoritesState {
  const _FavoritesLoadedState(final List<NewsArticleViewModel> articles)
      : _articles = articles;

  final List<NewsArticleViewModel> _articles;
  List<NewsArticleViewModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoritesLoadedStateCopyWith<_FavoritesLoadedState> get copyWith =>
      __$FavoritesLoadedStateCopyWithImpl<_FavoritesLoadedState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoritesLoadedState &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @override
  String toString() {
    return 'FavoritesState.loaded(articles: $articles)';
  }
}

/// @nodoc
abstract mixin class _$FavoritesLoadedStateCopyWith<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  factory _$FavoritesLoadedStateCopyWith(_FavoritesLoadedState value,
          $Res Function(_FavoritesLoadedState) _then) =
      __$FavoritesLoadedStateCopyWithImpl;
  @useResult
  $Res call({List<NewsArticleViewModel> articles});
}

/// @nodoc
class __$FavoritesLoadedStateCopyWithImpl<$Res>
    implements _$FavoritesLoadedStateCopyWith<$Res> {
  __$FavoritesLoadedStateCopyWithImpl(this._self, this._then);

  final _FavoritesLoadedState _self;
  final $Res Function(_FavoritesLoadedState) _then;

  /// Create a copy of FavoritesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? articles = null,
  }) {
    return _then(_FavoritesLoadedState(
      null == articles
          ? _self._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsArticleViewModel>,
    ));
  }
}

// dart format on
