import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/base_post.dart';

part 'law_news_model_response.freezed.dart';
part 'law_news_model_response.g.dart';

@freezed
class LawNews with _$LawNews {
  const factory LawNews({
    required bool? success,
    required dynamic message,
    required Data? data,
  }) = _LawNews;
  factory LawNews.fromJson(Map<String, dynamic> json) =>
      _$LawNewsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String? link,
    required String? image,
    required String? description,
    required String? title,
    required List<PostLaw>? posts,
  }) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class PostLaw with _$PostLaw implements BasePost {
  const factory PostLaw({
    required String? link,
    required String? title,
    required DateTime? pubDate,
    required String? description,
    required String? thumbnail,
  }) = _Post;
  factory PostLaw.fromJson(Map<String, dynamic> json) =>
      _$PostLawFromJson(json);
}
