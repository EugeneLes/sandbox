// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/home',
      hasOverriddenOnExit: false,
      factory: $HomeRoute._fromState,
      routes: [
        GoRouteData.$route(
          path: ':source',
          hasOverriddenOnExit: false,
          factory: $NewsRoute._fromState,
          routes: [
            GoRouteData.$route(
              path: 'article',
              hasOverriddenOnExit: false,
              factory: $ArticleRoute._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'favoriteart',
          hasOverriddenOnExit: false,
          factory: $FavArticleRoute._fromState,
        ),
      ],
    );

mixin $HomeRoute on GoRouteData {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  @override
  String get location => GoRouteData.$location(
        '/home',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $NewsRoute on GoRouteData {
  static NewsRoute _fromState(GoRouterState state) => NewsRoute(
        state.pathParameters['source']!,
      );

  NewsRoute get _self => this as NewsRoute;

  @override
  String get location => GoRouteData.$location(
        '/home/${Uri.encodeComponent(_self.source)}',
      );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $ArticleRoute on GoRouteData {
  static ArticleRoute _fromState(GoRouterState state) => ArticleRoute(
        state.pathParameters['source']!,
        $extra: state.extra as NewsArticleViewModel,
      );

  ArticleRoute get _self => this as ArticleRoute;

  @override
  String get location => GoRouteData.$location(
        '/home/${Uri.encodeComponent(_self.source)}/article',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}

mixin $FavArticleRoute on GoRouteData {
  static FavArticleRoute _fromState(GoRouterState state) => FavArticleRoute(
        $extra: state.extra as NewsArticleViewModel,
      );

  FavArticleRoute get _self => this as FavArticleRoute;

  @override
  String get location => GoRouteData.$location(
        '/home/favoriteart',
      );

  @override
  void go(BuildContext context) => context.go(location, extra: _self.$extra);

  @override
  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: _self.$extra);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: _self.$extra);

  @override
  void replace(BuildContext context) =>
      context.replace(location, extra: _self.$extra);
}
