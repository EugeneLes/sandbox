import 'package:isar/isar.dart';

part 'article.g.dart';

@collection
class Article {
  Id id = Isar.autoIncrement;

  late Source source;
  late String author;
  late String title;
  late String description;
  @Index()
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;
}

@embedded
class Source {
  late String id;
  late String name;
}
