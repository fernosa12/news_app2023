// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/response/response_news_model.dart';

part 'news_home_page_cubit.freezed.dart';
part 'news_home_page_state.dart';

class NewsHomePageCubit extends Cubit<NewsHomePageState> {
  NewsHomePageCubit() : super(const NewsHomePageState());
  Future<void> getNews() async {
    emit(state.copyWith(isLoading: true));

    final dio = Dio();
    final url =
        'https://newsapi.org/v2/everything?q=tesla&from=2023-09-19&sortBy=publishedAt&apiKey=8dace79601b34beebd192a626f0a772e';

    try {
      // Melakukan request ke API
      final response = await dio.get(url);

      // Jika berhasil
      if (response.statusCode == 200) {
        // Decode JSON response ke dalam Dart object dengan model yang telah didefinisikan
        final newsHomePage = NewsHomePage.fromJson(response.data);
        // Emit state yang baru dengan data yang telah dimuat
        emit(state.copyWith(isLoading: false, newsHomePage: newsHomePage));
      } else {
        // Jika response tidak sukses, emit error state
        emit(state.copyWith(
            isLoading: false,
            errorMessage:
                "Failed to load news, status code: ${response.statusCode}"));
      }
    } catch (e) {
      // Jika terjadi exception saat melakukan request, emit error state
      emit(state.copyWith(
          isLoading: false, errorMessage: "Failed to load news: $e"));
    }
  }
}
