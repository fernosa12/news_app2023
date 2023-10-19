// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_home_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsHomePageState {
  bool get isLoading => throw _privateConstructorUsedError;
  NewsHomePage? get newsHomePage => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsHomePageStateCopyWith<NewsHomePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsHomePageStateCopyWith<$Res> {
  factory $NewsHomePageStateCopyWith(
          NewsHomePageState value, $Res Function(NewsHomePageState) then) =
      _$NewsHomePageStateCopyWithImpl<$Res, NewsHomePageState>;
  @useResult
  $Res call({bool isLoading, NewsHomePage? newsHomePage, String? errorMessage});

  $NewsHomePageCopyWith<$Res>? get newsHomePage;
}

/// @nodoc
class _$NewsHomePageStateCopyWithImpl<$Res, $Val extends NewsHomePageState>
    implements $NewsHomePageStateCopyWith<$Res> {
  _$NewsHomePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newsHomePage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newsHomePage: freezed == newsHomePage
          ? _value.newsHomePage
          : newsHomePage // ignore: cast_nullable_to_non_nullable
              as NewsHomePage?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsHomePageCopyWith<$Res>? get newsHomePage {
    if (_value.newsHomePage == null) {
      return null;
    }

    return $NewsHomePageCopyWith<$Res>(_value.newsHomePage!, (value) {
      return _then(_value.copyWith(newsHomePage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NewsHomePageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, NewsHomePage? newsHomePage, String? errorMessage});

  @override
  $NewsHomePageCopyWith<$Res>? get newsHomePage;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NewsHomePageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newsHomePage = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newsHomePage: freezed == newsHomePage
          ? _value.newsHomePage
          : newsHomePage // ignore: cast_nullable_to_non_nullable
              as NewsHomePage?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.isLoading = false, this.newsHomePage, this.errorMessage})
      : super._();

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final NewsHomePage? newsHomePage;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'NewsHomePageState(isLoading: $isLoading, newsHomePage: $newsHomePage, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.newsHomePage, newsHomePage) ||
                other.newsHomePage == newsHomePage) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, newsHomePage, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial extends NewsHomePageState {
  const factory _Initial(
      {final bool isLoading,
      final NewsHomePage? newsHomePage,
      final String? errorMessage}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  bool get isLoading;
  @override
  NewsHomePage? get newsHomePage;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
