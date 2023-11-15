part of 'politik_news_cubit.dart';

@freezed
class PolitikNewsState with _$PolitikNewsState {
  const factory PolitikNewsState({
    @Default(false) bool isLoading,
    PolitikNews? politikNews,
    String? errorMessage,
  }) = _Initial;
}
