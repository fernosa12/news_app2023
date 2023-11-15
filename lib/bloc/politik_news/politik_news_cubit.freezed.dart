// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'politik_news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PolitikNewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  PolitikNews? get politikNews => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PolitikNewsStateCopyWith<PolitikNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolitikNewsStateCopyWith<$Res> {
  factory $PolitikNewsStateCopyWith(
          PolitikNewsState value, $Res Function(PolitikNewsState) then) =
      _$PolitikNewsStateCopyWithImpl<$Res, PolitikNewsState>;
  @useResult
  $Res call({bool isLoading, PolitikNews? politikNews, String? errorMessage});

  $PolitikNewsCopyWith<$Res>? get politikNews;
}

/// @nodoc
class _$PolitikNewsStateCopyWithImpl<$Res, $Val extends PolitikNewsState>
    implements $PolitikNewsStateCopyWith<$Res> {
  _$PolitikNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? politikNews = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      politikNews: freezed == politikNews
          ? _value.politikNews
          : politikNews // ignore: cast_nullable_to_non_nullable
              as PolitikNews?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolitikNewsCopyWith<$Res>? get politikNews {
    if (_value.politikNews == null) {
      return null;
    }

    return $PolitikNewsCopyWith<$Res>(_value.politikNews!, (value) {
      return _then(_value.copyWith(politikNews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $PolitikNewsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, PolitikNews? politikNews, String? errorMessage});

  @override
  $PolitikNewsCopyWith<$Res>? get politikNews;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PolitikNewsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? politikNews = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      politikNews: freezed == politikNews
          ? _value.politikNews
          : politikNews // ignore: cast_nullable_to_non_nullable
              as PolitikNews?,
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
      {this.isLoading = false, this.politikNews, this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final PolitikNews? politikNews;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PolitikNewsState(isLoading: $isLoading, politikNews: $politikNews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.politikNews, politikNews) ||
                other.politikNews == politikNews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, politikNews, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements PolitikNewsState {
  const factory _Initial(
      {final bool isLoading,
      final PolitikNews? politikNews,
      final String? errorMessage}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  PolitikNews? get politikNews;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
