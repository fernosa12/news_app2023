part of 'news_homepage_cubit.dart';

@freezed
class NewsHomepageState with _$NewsHomepageState {
  const factory NewsHomepageState(
      {@Default(false) bool isLoading,
      String? errorMassege,
      String? succesMassage,
      NewsHomePageResponse? newsHomePageResponse}) = _Initial;
}
