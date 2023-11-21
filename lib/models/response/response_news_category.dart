import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_news_category.freezed.dart';
part 'response_news_category.g.dart';

@freezed
class NewsCategoryModelResponse with _$NewsCategoryModelResponse {
  const factory NewsCategoryModelResponse({
    required String link,
    required String title,
    required DateTime pubDate,
    required String description,
    required String thumbnail,
  }) = _NewsCategoryModelResponse;

  factory NewsCategoryModelResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsCategoryModelResponseFromJson(json);
}
