// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_homepage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsHomepageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMassege => throw _privateConstructorUsedError;
  String? get succesMassage => throw _privateConstructorUsedError;
  NewsHomePageResponse? get newsHomePageResponse =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsHomepageStateCopyWith<NewsHomepageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsHomepageStateCopyWith<$Res> {
  factory $NewsHomepageStateCopyWith(
          NewsHomepageState value, $Res Function(NewsHomepageState) then) =
      _$NewsHomepageStateCopyWithImpl<$Res, NewsHomepageState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMassege,
      String? succesMassage,
      NewsHomePageResponse? newsHomePageResponse});

  $NewsHomePageResponseCopyWith<$Res>? get newsHomePageResponse;
}

/// @nodoc
class _$NewsHomepageStateCopyWithImpl<$Res, $Val extends NewsHomepageState>
    implements $NewsHomepageStateCopyWith<$Res> {
  _$NewsHomepageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMassege = freezed,
    Object? succesMassage = freezed,
    Object? newsHomePageResponse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMassege: freezed == errorMassege
          ? _value.errorMassege
          : errorMassege // ignore: cast_nullable_to_non_nullable
              as String?,
      succesMassage: freezed == succesMassage
          ? _value.succesMassage
          : succesMassage // ignore: cast_nullable_to_non_nullable
              as String?,
      newsHomePageResponse: freezed == newsHomePageResponse
          ? _value.newsHomePageResponse
          : newsHomePageResponse // ignore: cast_nullable_to_non_nullable
              as NewsHomePageResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsHomePageResponseCopyWith<$Res>? get newsHomePageResponse {
    if (_value.newsHomePageResponse == null) {
      return null;
    }

    return $NewsHomePageResponseCopyWith<$Res>(_value.newsHomePageResponse!,
        (value) {
      return _then(_value.copyWith(newsHomePageResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NewsHomepageStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMassege,
      String? succesMassage,
      NewsHomePageResponse? newsHomePageResponse});

  @override
  $NewsHomePageResponseCopyWith<$Res>? get newsHomePageResponse;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NewsHomepageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMassege = freezed,
    Object? succesMassage = freezed,
    Object? newsHomePageResponse = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMassege: freezed == errorMassege
          ? _value.errorMassege
          : errorMassege // ignore: cast_nullable_to_non_nullable
              as String?,
      succesMassage: freezed == succesMassage
          ? _value.succesMassage
          : succesMassage // ignore: cast_nullable_to_non_nullable
              as String?,
      newsHomePageResponse: freezed == newsHomePageResponse
          ? _value.newsHomePageResponse
          : newsHomePageResponse // ignore: cast_nullable_to_non_nullable
              as NewsHomePageResponse?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false,
      this.errorMassege,
      this.succesMassage,
      this.newsHomePageResponse});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMassege;
  @override
  final String? succesMassage;
  @override
  final NewsHomePageResponse? newsHomePageResponse;

  @override
  String toString() {
    return 'NewsHomepageState(isLoading: $isLoading, errorMassege: $errorMassege, succesMassage: $succesMassage, newsHomePageResponse: $newsHomePageResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMassege, errorMassege) ||
                other.errorMassege == errorMassege) &&
            (identical(other.succesMassage, succesMassage) ||
                other.succesMassage == succesMassage) &&
            (identical(other.newsHomePageResponse, newsHomePageResponse) ||
                other.newsHomePageResponse == newsHomePageResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, errorMassege,
      succesMassage, newsHomePageResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements NewsHomepageState {
  const factory _Initial(
      {final bool isLoading,
      final String? errorMassege,
      final String? succesMassage,
      final NewsHomePageResponse? newsHomePageResponse}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  String? get errorMassege;
  @override
  String? get succesMassage;
  @override
  NewsHomePageResponse? get newsHomePageResponse;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
