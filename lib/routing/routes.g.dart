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
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':source',
          factory: $NewsRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'article',
              factory: $ArticleRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'favoriteart',
          factory: $FavArticleRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NewsRouteExtension on NewsRoute {
  static NewsRoute _fromState(GoRouterState state) => NewsRoute(
        state.pathParameters['source']!,
      );

  String get location => GoRouteData.$location(
        '/home/${Uri.encodeComponent(source)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ArticleRouteExtension on ArticleRoute {
  static ArticleRoute _fromState(GoRouterState state) => ArticleRoute(
        state.pathParameters['source']!,
        $extra: state.extra as NewsArticleViewModel,
      );

  String get location => GoRouteData.$location(
        '/home/${Uri.encodeComponent(source)}/article',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $FavArticleRouteExtension on FavArticleRoute {
  static FavArticleRoute _fromState(GoRouterState state) => FavArticleRoute(
        $extra: state.extra as NewsArticleViewModel,
      );

  String get location => GoRouteData.$location(
        '/home/favoriteart',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}
