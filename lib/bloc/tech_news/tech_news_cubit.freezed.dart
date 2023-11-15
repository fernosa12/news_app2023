// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tech_news_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TechNewsState {
  bool get isLoading => throw _privateConstructorUsedError;
  TechNews? get techNews => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TechNewsStateCopyWith<TechNewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechNewsStateCopyWith<$Res> {
  factory $TechNewsStateCopyWith(
          TechNewsState value, $Res Function(TechNewsState) then) =
      _$TechNewsStateCopyWithImpl<$Res, TechNewsState>;
  @useResult
  $Res call({bool isLoading, TechNews? techNews, String? errorMessage});

  $TechNewsCopyWith<$Res>? get techNews;
}

/// @nodoc
class _$TechNewsStateCopyWithImpl<$Res, $Val extends TechNewsState>
    implements $TechNewsStateCopyWith<$Res> {
  _$TechNewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? techNews = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      techNews: freezed == techNews
          ? _value.techNews
          : techNews // ignore: cast_nullable_to_non_nullable
              as TechNews?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TechNewsCopyWith<$Res>? get techNews {
    if (_value.techNews == null) {
      return null;
    }

    return $TechNewsCopyWith<$Res>(_value.techNews!, (value) {
      return _then(_value.copyWith(techNews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TechNewsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, TechNews? techNews, String? errorMessage});

  @override
  $TechNewsCopyWith<$Res>? get techNews;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TechNewsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? techNews = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      techNews: freezed == techNews
          ? _value.techNews
          : techNews // ignore: cast_nullable_to_non_nullable
              as TechNews?,
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
      {this.isLoading = false, this.techNews, this.errorMessage});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final TechNews? techNews;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'TechNewsState(isLoading: $isLoading, techNews: $techNews, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.techNews, techNews) ||
                other.techNews == techNews) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, techNews, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements TechNewsState {
  const factory _Initial(
      {final bool isLoading,
      final TechNews? techNews,
      final String? errorMessage}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  TechNews? get techNews;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
