import 'package:flutter/material.dart';
import 'package:sandbox/news/view/model/news_article_view_model.dart';

class ArticleContent extends StatelessWidget {
  final NewsArticleViewModel model;
  const ArticleContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Image.network(model.urlToImage),
        Text(
          'Author: ${model.author}',
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        Text(
          'Published: ${model.publishedAt}',
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        Text(
          'Description: ${model.description}',
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        Text(
          'Content: ${model.content}',
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
