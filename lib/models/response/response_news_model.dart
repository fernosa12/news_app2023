import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_news_model.freezed.dart';
part 'response_news_model.g.dart';

@freezed
class NewsHomePage with _$NewsHomePage {
  const factory NewsHomePage({
    required String status,
    required int totalResults,
    required List<Article> articles,
  }) = _NewsHomePage;
  factory NewsHomePage.fromJson(Map<String, dynamic> json) =>
      _$NewsHomePageFromJson(json);
}

@freezed
class Article with _$Article {
  const factory Article({
    required Source source,
    required String author,
    required String title,
    required String description,
    required String url,
    required String urlToImage,
    required DateTime publishedAt,
    required String content,
  }) = _Article;
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    required String id,
    required String name,
  }) = _Source;
  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
