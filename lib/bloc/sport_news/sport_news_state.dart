part of 'sport_news_cubit.dart';

@freezed
class SportNewsState with _$SportNewsState {
  const factory SportNewsState({
    @Default(false) bool isLoading,
    SportNews? sportNews,
    String? errorMessage,
  }) = _Initial;
}
