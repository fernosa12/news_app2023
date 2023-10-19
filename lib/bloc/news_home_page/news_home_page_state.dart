part of 'news_home_page_cubit.dart';

@freezed
class NewsHomePageState with _$NewsHomePageState {
  const NewsHomePageState._();
  const factory NewsHomePageState({
    @Default(false) bool isLoading,
    NewsHomePage? newsHomePage,
    String? errorMessage,
  }) = _Initial;
}
