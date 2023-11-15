part of 'category_news_cubit.dart';

@freezed
class CategoryNewsState with _$CategoryNewsState {
  const factory CategoryNewsState({
    @Default(false) bool isLoading,
    PolitikNews? politikNews,
    LawNews? lawNews,
    EconomyNews? economyNews,
    TechNews? techNews,
    SportNews? sportNews,
    String? errorMessage,
  }) = _Initial;
}
