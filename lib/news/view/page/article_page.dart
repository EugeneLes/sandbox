import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sandbox/favorites/view/bloc/favorites_bloc.dart';
import 'package:sandbox/news/view/model/news_article_view_model.dart';
import 'package:sandbox/news/view/page/article_content.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key, required this.model});
  final NewsArticleViewModel model;

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  late bool isFavorite;

  @override
  void initState() {
    super.initState();
    isFavorite = widget.model.isFavorite;
  }

  void _onPressed(BuildContext context) {
    if (isFavorite) {
      context.read<FavoritesBloc>().add(FavoritesEvent.unfavorite(widget.model));
      setState(() {
        isFavorite = false;
      });
    } else {
      context.read<FavoritesBloc>().add(FavoritesEvent.favorite(widget.model));
      setState(() {
        isFavorite = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Article'),
          actions: [
            IconButton(
              onPressed: () => _onPressed(context),
              icon: Icon(
                Icons.favorite,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
            )
          ],
        ),
        body: ArticleContent(model: widget.model));
  }
}
