class Article {
  /// 0 means "not saved yet"; the storage assigns the real id on save.
  int id = 0;

  late Source source;
  late String author;
  late String title;
  late String description;
  late String url;
  late String urlToImage;
  late String publishedAt;
  late String content;

  Article();

  factory Article.fromJson(Map<String, dynamic> json) => Article()
    ..id = json['id'] as int
    ..source = Source.fromJson(json['source'] as Map<String, dynamic>)
    ..author = json['author'] as String
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..url = json['url'] as String
    ..urlToImage = json['urlToImage'] as String
    ..publishedAt = json['publishedAt'] as String
    ..content = json['content'] as String;

  Map<String, dynamic> toJson() => {
        'id': id,
        'source': source.toJson(),
        'author': author,
        'title': title,
        'description': description,
        'url': url,
        'urlToImage': urlToImage,
        'publishedAt': publishedAt,
        'content': content,
      };
}

class Source {
  late String id;
  late String name;

  Source();

  factory Source.fromJson(Map<String, dynamic> json) => Source()
    ..id = json['id'] as String
    ..name = json['name'] as String;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
