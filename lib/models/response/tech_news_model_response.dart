import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/base_post.dart';

part 'tech_news_model_response.freezed.dart';
part 'tech_news_model_response.g.dart';

@freezed
class TechNews with _$TechNews {
  const factory TechNews({
    required bool? success,
    required dynamic message,
    required Data? data,
  }) = _TechNews;
  factory TechNews.fromJson(Map<String, dynamic> json) =>
      _$TechNewsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String? link,
    required String? image,
    required String? description,
    required String? title,
    required List<PostTech>? posts,
  }) = _Data;
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class PostTech with _$PostTech implements BasePost {
  const factory PostTech({
    required String? link,
    required String? title,
    required DateTime? pubDate,
    required String? description,
    required String? thumbnail,
  }) = _Post;
  factory PostTech.fromJson(Map<String, dynamic> json) =>
      _$PostTechFromJson(json);
}
