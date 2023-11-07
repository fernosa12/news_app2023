// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsHomePageImpl _$$NewsHomePageImplFromJson(Map<String, dynamic> json) =>
    _$NewsHomePageImpl(
      success: json['success'] as bool?,
      messege: json['messege'],
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewsHomePageImplToJson(_$NewsHomePageImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'messege': instance.messege,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      link: json['link'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      title: json['title'] as String?,
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'image': instance.image,
      'description': instance.description,
      'title': instance.title,
      'posts': instance.posts,
    };

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      link: json['link'] as String?,
      title: json['title'] as String?,
      pubDate: json['pubDate'] == null
          ? null
          : DateTime.parse(json['pubDate'] as String),
      description: json['description'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'link': instance.link,
      'title': instance.title,
      'pubDate': instance.pubDate?.toIso8601String(),
      'description': instance.description,
      'thumbnail': instance.thumbnail,
    };
