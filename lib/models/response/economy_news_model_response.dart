import 'package:freezed_annotation/freezed_annotation.dart';

part 'economy_news_model_response.freezed.dart';
part 'economy_news_model_response.g.dart';

@freezed
class EconomyNews with _$EconomyNews {
  const factory EconomyNews({
    required bool? success,
    required dynamic message,
    required Data? data,
  }) = _EconomyNews;
  factory EconomyNews.fromJson(Map<String, dynamic> json) =>
      _$EconomyNewsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String? link,
    required String? image,
    required String? description,
    required String? title,
    required List<Post>? posts,
  }) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post({
    required String? link,
    required String? title,
    required DateTime? pubDate,
    required String? description,
    required String? thumbnail,
  }) = _Post;
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}
