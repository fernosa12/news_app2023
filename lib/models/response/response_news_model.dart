import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_news_model.freezed.dart';

@freezed
class NewsHomePage with _$NewsHomePage {
  const factory NewsHomePage({
    required String status,
    required int totalResults,
    required List<Article> articles,
  }) = _NewsHomePage;
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
}

@freezed
class Source with _$Source {
  const factory Source({
    required String id,
    required String name,
  }) = _Source;
}
