import 'package:injectable/injectable.dart';
import 'package:sandbox/favorites/data/repo/favorites_repository.dart';
import 'package:sandbox/news/data/models/top_headlines_dto.dart';
import 'package:sandbox/news/data/repo/news_repository.dart';
import 'package:sandbox/news/domain/models/article_model.dart';
import 'package:sandbox/news/domain/models/news_model.dart';

@Injectable()
class LoadNewsUC {
  final NewsRepository _newsRepository;
  final FavoritesRepository _favoritesRepository;
  LoadNewsUC(
    this._newsRepository,
    this._favoritesRepository,
  );
  Future<NewsModel> call(String sourceId) async {
    final result = await _newsRepository.getTopHeadlines(sources: sourceId);

    return _mapResult(result);
  }

  Future<NewsModel> _mapResult(TopHeadlinesDTO news) async {
    final articles = <ArticleModel>[];
    for (var article in news.articles) {
      final isFavId = await _favoritesRepository.isFavorite(article.url);
      if (isFavId != null) {
        articles.add(article.toModel(id: isFavId, isFavorite: true));
      } else {
        articles.add(article.toModel());
      }
    }
    return NewsModel(articles);
  }
}
