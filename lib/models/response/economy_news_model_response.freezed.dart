// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'economy_news_model_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EconomyNews _$EconomyNewsFromJson(Map<String, dynamic> json) {
  return _EconomyNews.fromJson(json);
}

/// @nodoc
mixin _$EconomyNews {
  bool? get success => throw _privateConstructorUsedError;
  dynamic get message => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EconomyNewsCopyWith<EconomyNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EconomyNewsCopyWith<$Res> {
  factory $EconomyNewsCopyWith(
          EconomyNews value, $Res Function(EconomyNews) then) =
      _$EconomyNewsCopyWithImpl<$Res, EconomyNews>;
  @useResult
  $Res call({bool? success, dynamic message, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$EconomyNewsCopyWithImpl<$Res, $Val extends EconomyNews>
    implements $EconomyNewsCopyWith<$Res> {
  _$EconomyNewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EconomyNewsImplCopyWith<$Res>
    implements $EconomyNewsCopyWith<$Res> {
  factory _$$EconomyNewsImplCopyWith(
          _$EconomyNewsImpl value, $Res Function(_$EconomyNewsImpl) then) =
      __$$EconomyNewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, dynamic message, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$EconomyNewsImplCopyWithImpl<$Res>
    extends _$EconomyNewsCopyWithImpl<$Res, _$EconomyNewsImpl>
    implements _$$EconomyNewsImplCopyWith<$Res> {
  __$$EconomyNewsImplCopyWithImpl(
      _$EconomyNewsImpl _value, $Res Function(_$EconomyNewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$EconomyNewsImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EconomyNewsImpl implements _EconomyNews {
  const _$EconomyNewsImpl(
      {required this.success, required this.message, required this.data});

  factory _$EconomyNewsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EconomyNewsImplFromJson(json);

  @override
  final bool? success;
  @override
  final dynamic message;
  @override
  final Data? data;

  @override
  String toString() {
    return 'EconomyNews(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EconomyNewsImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, const DeepCollectionEquality().hash(message), data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EconomyNewsImplCopyWith<_$EconomyNewsImpl> get copyWith =>
      __$$EconomyNewsImplCopyWithImpl<_$EconomyNewsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EconomyNewsImplToJson(
      this,
    );
  }
}

abstract class _EconomyNews implements EconomyNews {
  const factory _EconomyNews(
      {required final bool? success,
      required final dynamic message,
      required final Data? data}) = _$EconomyNewsImpl;

  factory _EconomyNews.fromJson(Map<String, dynamic> json) =
      _$EconomyNewsImpl.fromJson;

  @override
  bool? get success;
  @override
  dynamic get message;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$EconomyNewsImplCopyWith<_$EconomyNewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get link => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<Post>? get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? link,
      String? image,
      String? description,
      String? title,
      List<Post>? posts});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: freezed == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? link,
      String? image,
      String? description,
      String? title,
      List<Post>? posts});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? posts = freezed,
  }) {
    return _then(_$DataImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posts: freezed == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.link,
      required this.image,
      required this.description,
      required this.title,
      required final List<Post>? posts})
      : _posts = posts;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? link;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final String? title;
  final List<Post>? _posts;
  @override
  List<Post>? get posts {
    final value = _posts;
    if (value == null) return null;
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(link: $link, image: $image, description: $description, title: $title, posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link, image, description, title,
      const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final String? link,
      required final String? image,
      required final String? description,
      required final String? title,
      required final List<Post>? posts}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get link;
  @override
  String? get image;
  @override
  String? get description;
  @override
  String? get title;
  @override
  List<Post>? get posts;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get link => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get pubDate => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String? link,
      String? title,
      DateTime? pubDate,
      String? description,
      String? thumbnail});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? title = freezed,
    Object? pubDate = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? link,
      String? title,
      DateTime? pubDate,
      String? description,
      String? thumbnail});
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? title = freezed,
    Object? pubDate = freezed,
    Object? description = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$PostImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {required this.link,
      required this.title,
      required this.pubDate,
      required this.description,
      required this.thumbnail});

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String? link;
  @override
  final String? title;
  @override
  final DateTime? pubDate;
  @override
  final String? description;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'Post(link: $link, title: $title, pubDate: $pubDate, description: $description, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
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
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final String? link,
      required final String? title,
      required final DateTime? pubDate,
      required final String? description,
      required final String? thumbnail}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String? get link;
  @override
  String? get title;
  @override
  DateTime? get pubDate;
  @override
  String? get description;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
