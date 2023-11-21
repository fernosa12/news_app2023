part of 'news_category_cubit.dart';

@freezed
class NewsCategoryState with _$NewsCategoryState {
  const factory NewsCategoryState({
    @Default(false) bool isLoading,
    @Default(false) bool isValid,
    String? errorMessage,
    String? succesMessge,
    List<String>? categories,
    List<NewsCategoryModelResponse>? newsList,
  }) = _Initial;
}
