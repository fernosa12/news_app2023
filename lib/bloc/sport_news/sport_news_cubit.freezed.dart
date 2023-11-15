// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sport_news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SportNewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  SportNews? get sportNews => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SportNewsStateCopyWith<SportNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportNewsStateCopyWith<$Res> {
  factory $SportNewsStateCopyWith(
          SportNewsState value, $Res Function(SportNewsState) then) =
      _$SportNewsStateCopyWithImpl<$Res, SportNewsState>;
  @useResult
  $Res call({bool isLoading, SportNews? sportNews, String? errorMessage});

  $SportNewsCopyWith<$Res>? get sportNews;
}

/// @nodoc
class _$SportNewsStateCopyWithImpl<$Res, $Val extends SportNewsState>
    implements $SportNewsStateCopyWith<$Res> {
  _$SportNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? sportNews = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sportNews: freezed == sportNews
          ? _value.sportNews
          : sportNews // ignore: cast_nullable_to_non_nullable
              as SportNews?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SportNewsCopyWith<$Res>? get sportNews {
    if (_value.sportNews == null) {
      return null;
    }

    return $SportNewsCopyWith<$Res>(_value.sportNews!, (value) {
      return _then(_value.copyWith(sportNews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SportNewsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, SportNews? sportNews, String? errorMessage});

  @override
  $SportNewsCopyWith<$Res>? get sportNews;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SportNewsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? sportNews = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sportNews: freezed == sportNews
          ? _value.sportNews
          : sportNews // ignore: cast_nullable_to_non_nullable
              as SportNews?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false, this.sportNews, this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final SportNews? sportNews;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SportNewsState(isLoading: $isLoading, sportNews: $sportNews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.sportNews, sportNews) ||
                other.sportNews == sportNews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, sportNews, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SportNewsState {
  const factory _Initial(
      {final bool isLoading,
      final SportNews? sportNews,
      final String? errorMessage}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  SportNews? get sportNews;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
