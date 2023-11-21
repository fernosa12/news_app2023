// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/repository/news_repository_impl.dart';
import 'package:news_app/models/response/response_news_category.dart';

part 'news_category_cubit.freezed.dart';
part 'news_category_state.dart';

class NewsCategoryCubit extends Cubit<NewsCategoryState> {
  final NewsCategoryRepositoryImpl newsRepositoryImpl;
  NewsCategoryCubit(
    this.newsRepositoryImpl,
  ) : super(const NewsCategoryState());
  Future<void> fetchCategories() async {
    emit(state.copyWith(isLoading: true));
    final result = await newsRepositoryImpl.getCategories();

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure)),
      (categories) {
        emit(state.copyWith(isLoading: false, categories: categories));
        // After categories are successfully fetched, fetch news for the first category.
        if (categories.isNotEmpty) {
          fetchNewsByIndex(0);
        }
      },
    );
  }

  Future<void> fetchNewsByIndex(int index) async {
    if (state.categories == null ||
        index < 0 ||
        index >= state.categories!.length) {
      emit(state.copyWith(errorMessage: "Category index out of bounds"));
      return;
    }

    // Get the category name using the index
    final category = state.categories![index];

    // Now fetch the news for this category
    await fetchNews(category);
  }

  Future<void> fetchNews(String category) async {
    emit(state.copyWith(isLoading: true));

    final result = await newsRepositoryImpl.getNews(category);

    print(result);
    result.fold(
      (failure) {
        // Handle failure case
        emit(state.copyWith(isLoading: false, errorMessage: failure));
      },
      (news) => emit(state.copyWith(isLoading: false, newsList: news)),
    );
  }
}
