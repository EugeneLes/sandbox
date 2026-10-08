// ignore_for_file:prefer-match-file-name

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sandbox/home_page.dart';
import 'package:sandbox/news/view/model/news_article_view_model.dart';
import 'package:sandbox/news/view/page/article_page.dart';
import 'package:sandbox/news/view/page/news_page.dart';

part 'routes.g.dart';

final initialLocation = const HomeRoute().location;

List<RouteBase> get routes => $appRoutes;

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<HomeRoute>(
  path: '/home',
  routes: [
    TypedGoRoute<NewsRoute>(
      path: ':source',
      routes: [
        TypedGoRoute<ArticleRoute>(path: 'article'),
      ],
    ),
    TypedGoRoute<FavArticleRoute>(path: 'favoriteart'),
  ],
)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomePage();
}

class NewsRoute extends GoRouteData with $NewsRoute {
  const NewsRoute(this.source);

  final String source;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final id = state.pathParameters['source']!;
    return NewsPage(
      source: id,
    );
  }
}

class ArticleRoute extends GoRouteData with $ArticleRoute {
  ArticleRoute(this.source, {required this.$extra});

  final NewsArticleViewModel $extra;
  final String source;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ArticlePage(
      model: $extra,
    );
  }
}

class FavArticleRoute extends GoRouteData with $FavArticleRoute {
  FavArticleRoute({required this.$extra});

  final NewsArticleViewModel $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    print('___ extra: ${$extra}');
    return ArticlePage(
      model: $extra,
    );
  }
}
