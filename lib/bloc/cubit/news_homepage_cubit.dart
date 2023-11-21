// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/repository/news_home_page_repository_impl.dart';
import 'package:news_app/models/response/response_news_homepage_model.dart';

part 'news_homepage_cubit.freezed.dart';
part 'news_homepage_state.dart';

class NewsHomepageCubit extends Cubit<NewsHomepageState> {
  final NewsHomePageRepositoryImpl newsHomePageRepositoryImpl;
  NewsHomepageCubit(
    this.newsHomePageRepositoryImpl,
  ) : super(const NewsHomepageState());
  Future<void> fetchNewsHomePage() async {
    try {
      // Emitting loading state
      emit(state.copyWith(isLoading: true));

      // Fetching data from the repository
      final response = await newsHomePageRepositoryImpl.newsHomePage();
      print(response);

      // Emitting success state with data
      emit(state.copyWith(
          isLoading: false,
          newsHomePageResponse: response,
          succesMassage: 'News Loaded Successfully'));
    } catch (e) {
      // Emitting error state
      emit(state.copyWith(
          isLoading: false,
          errorMassege: e.toString(),
          newsHomePageResponse: null));
    }
  }
}
