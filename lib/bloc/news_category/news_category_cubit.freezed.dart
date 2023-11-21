// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsCategoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get succesMessge => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;
  List<NewsCategoryModelResponse>? get newsList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsCategoryStateCopyWith<NewsCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCategoryStateCopyWith<$Res> {
  factory $NewsCategoryStateCopyWith(
          NewsCategoryState value, $Res Function(NewsCategoryState) then) =
      _$NewsCategoryStateCopyWithImpl<$Res, NewsCategoryState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isValid,
      String? errorMessage,
      String? succesMessge,
      List<String>? categories,
      List<NewsCategoryModelResponse>? newsList});
}

/// @nodoc
class _$NewsCategoryStateCopyWithImpl<$Res, $Val extends NewsCategoryState>
    implements $NewsCategoryStateCopyWith<$Res> {
  _$NewsCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
    Object? succesMessge = freezed,
    Object? categories = freezed,
    Object? newsList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      succesMessge: freezed == succesMessge
          ? _value.succesMessge
          : succesMessge // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      newsList: freezed == newsList
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<NewsCategoryModelResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $NewsCategoryStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isValid,
      String? errorMessage,
      String? succesMessge,
      List<String>? categories,
      List<NewsCategoryModelResponse>? newsList});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NewsCategoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
    Object? succesMessge = freezed,
    Object? categories = freezed,
    Object? newsList = freezed,
  }) {
    return _then(_$InitialImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      succesMessge: freezed == succesMessge
          ? _value.succesMessge
          : succesMessge // ignore: cast_nullable_to_non_nullable
              as String?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      newsList: freezed == newsList
          ? _value._newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<NewsCategoryModelResponse>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isLoading = false,
      this.isValid = false,
      this.errorMessage,
      this.succesMessge,
      final List<String>? categories,
      final List<NewsCategoryModelResponse>? newsList})
      : _categories = categories,
        _newsList = newsList;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorMessage;
  @override
  final String? succesMessge;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NewsCategoryModelResponse>? _newsList;
  @override
  List<NewsCategoryModelResponse>? get newsList {
    final value = _newsList;
    if (value == null) return null;
    if (_newsList is EqualUnmodifiableListView) return _newsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewsCategoryState(isLoading: $isLoading, isValid: $isValid, errorMessage: $errorMessage, succesMessge: $succesMessge, categories: $categories, newsList: $newsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.succesMessge, succesMessge) ||
                other.succesMessge == succesMessge) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._newsList, _newsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isValid,
      errorMessage,
      succesMessge,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_newsList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements NewsCategoryState {
  const factory _Initial(
      {final bool isLoading,
      final bool isValid,
      final String? errorMessage,
      final String? succesMessge,
      final List<String>? categories,
      final List<NewsCategoryModelResponse>? newsList}) = _$InitialImpl;

  @override
  bool get isLoading;
  @override
  bool get isValid;
  @override
  String? get errorMessage;
  @override
  String? get succesMessge;
  @override
  List<String>? get categories;
  @override
  List<NewsCategoryModelResponse>? get newsList;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
