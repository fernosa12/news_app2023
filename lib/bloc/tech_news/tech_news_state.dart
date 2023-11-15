part of 'tech_news_cubit.dart';

@freezed
class TechNewsState with _$TechNewsState {
  const factory TechNewsState({
    @Default(false) bool isLoading,
    TechNews? techNews,
    String? errorMessage,
  }) = _Initial;
}
