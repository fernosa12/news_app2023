import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_news_homepage_model.freezed.dart';
part 'response_news_homepage_model.g.dart';

@freezed
class NewsHomePageResponse with _$NewsHomePageResponse {
  const factory NewsHomePageResponse({
    required bool? success,
    required dynamic messege,
    required Data? data,
  }) = _NewsHomePageResponse;
  factory NewsHomePageResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsHomePageResponseFromJson(json);
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
