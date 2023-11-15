part of 'economy_news_cubit.dart';

@freezed
class EconomyNewsState with _$EconomyNewsState {
  const factory EconomyNewsState({
    @Default(false) bool isLoading,
    EconomyNews? economyNews,
    String? errorMessage,
  }) = _Initial;
}
