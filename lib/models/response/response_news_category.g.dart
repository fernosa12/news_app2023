// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_news_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsCategoryModelResponseImpl _$$NewsCategoryModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$NewsCategoryModelResponseImpl(
      link: json['link'] as String,
      title: json['title'] as String,
      pubDate: DateTime.parse(json['pubDate'] as String),
      description: json['description'] as String,
      thumbnail: json['thumbnail'] as String,
    );

Map<String, dynamic> _$$NewsCategoryModelResponseImplToJson(
        _$NewsCategoryModelResponseImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'title': instance.title,
      'pubDate': instance.pubDate.toIso8601String(),
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };
