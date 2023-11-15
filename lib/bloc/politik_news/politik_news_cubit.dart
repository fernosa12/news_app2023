import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/response/politik_news_model_response.dart';

part 'politik_news_cubit.freezed.dart';
part 'politik_news_state.dart';

class PolitikNewsCubit extends Cubit<PolitikNewsState> {
  PolitikNewsCubit() : super(const PolitikNewsState());
  Future<void> getPolitikNews() async {
    emit(state.copyWith(isLoading: true));
    final dio = Dio();
    const url = 'https://api-berita-indonesia.vercel.app/antara/politik/';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        print('Response data: ${response.data}');
        final politikNews = PolitikNews.fromJson(response.data);
        emit(state.copyWith(isLoading: false, politikNews: politikNews));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
