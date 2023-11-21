// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_news_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsCategoryModelResponse _$NewsCategoryModelResponseFromJson(
    Map<String, dynamic> json) {
  return _NewsCategoryModelResponse.fromJson(json);
}

/// @nodoc
mixin _$NewsCategoryModelResponse {
  String get link => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get pubDate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCategoryModelResponseCopyWith<NewsCategoryModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCategoryModelResponseCopyWith<$Res> {
  factory $NewsCategoryModelResponseCopyWith(NewsCategoryModelResponse value,
          $Res Function(NewsCategoryModelResponse) then) =
      _$NewsCategoryModelResponseCopyWithImpl<$Res, NewsCategoryModelResponse>;
  @useResult
  $Res call(
      {String link,
      String title,
      DateTime pubDate,
      String description,
      String thumbnail});
}

/// @nodoc
class _$NewsCategoryModelResponseCopyWithImpl<$Res,
        $Val extends NewsCategoryModelResponse>
    implements $NewsCategoryModelResponseCopyWith<$Res> {
  _$NewsCategoryModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? title = null,
    Object? pubDate = null,
    Object? description = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsCategoryModelResponseImplCopyWith<$Res>
    implements $NewsCategoryModelResponseCopyWith<$Res> {
  factory _$$NewsCategoryModelResponseImplCopyWith(
          _$NewsCategoryModelResponseImpl value,
          $Res Function(_$NewsCategoryModelResponseImpl) then) =
      __$$NewsCategoryModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String link,
      String title,
      DateTime pubDate,
      String description,
      String thumbnail});
}

/// @nodoc
class __$$NewsCategoryModelResponseImplCopyWithImpl<$Res>
    extends _$NewsCategoryModelResponseCopyWithImpl<$Res,
        _$NewsCategoryModelResponseImpl>
    implements _$$NewsCategoryModelResponseImplCopyWith<$Res> {
  __$$NewsCategoryModelResponseImplCopyWithImpl(
      _$NewsCategoryModelResponseImpl _value,
      $Res Function(_$NewsCategoryModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = null,
    Object? title = null,
    Object? pubDate = null,
    Object? description = null,
    Object? thumbnail = null,
  }) {
    return _then(_$NewsCategoryModelResponseImpl(
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      pubDate: null == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsCategoryModelResponseImpl implements _NewsCategoryModelResponse {
  const _$NewsCategoryModelResponseImpl(
      {required this.link,
      required this.title,
      required this.pubDate,
      required this.description,
      required this.thumbnail});

  factory _$NewsCategoryModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsCategoryModelResponseImplFromJson(json);

  @override
  final String link;
  @override
  final String title;
  @override
  final DateTime pubDate;
  @override
  final String description;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'NewsCategoryModelResponse(link: $link, title: $title, pubDate: $pubDate, description: $description, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsCategoryModelResponseImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, link, title, pubDate, description, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsCategoryModelResponseImplCopyWith<_$NewsCategoryModelResponseImpl>
      get copyWith => __$$NewsCategoryModelResponseImplCopyWithImpl<
          _$NewsCategoryModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsCategoryModelResponseImplToJson(
      this,
    );
  }
}

abstract class _NewsCategoryModelResponse implements NewsCategoryModelResponse {
  const factory _NewsCategoryModelResponse(
      {required final String link,
      required final String title,
      required final DateTime pubDate,
      required final String description,
      required final String thumbnail}) = _$NewsCategoryModelResponseImpl;

  factory _NewsCategoryModelResponse.fromJson(Map<String, dynamic> json) =
      _$NewsCategoryModelResponseImpl.fromJson;

  @override
  String get link;
  @override
  String get title;
  @override
  DateTime get pubDate;
  @override
  String get description;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$NewsCategoryModelResponseImplCopyWith<_$NewsCategoryModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
