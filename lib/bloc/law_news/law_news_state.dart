part of 'law_news_cubit.dart';

@freezed
class LawNewsState with _$LawNewsState {
  const factory LawNewsState({
    @Default(false) bool isLoading,
    LawNews? lawNews,
    String? errorMessage,
  }) = _Initial;
}
