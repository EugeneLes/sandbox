import 'package:injectable/injectable.dart';
import 'package:sandbox/favorites/data/repo/favorites_repository.dart';

@Injectable()
class RemoveArticleUC {
  final FavoritesRepository _repo;

  RemoveArticleUC(this._repo);
  Future<bool> call(int id) {
    return _repo.removeArticle(id);
  }
}
