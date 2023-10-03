import 'package:flutter/material.dart';
import 'package:sandbox/news/view/model/news_view_model.dart';
import 'package:sandbox/shared/view/widgets/article_item.dart';

class NewsContent extends StatelessWidget {
  final NewsViewModel model;
  const NewsContent({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ArticleItem(model: model.articles[index]);
      },
      itemCount: model.articles.length,
    );
  }
}
