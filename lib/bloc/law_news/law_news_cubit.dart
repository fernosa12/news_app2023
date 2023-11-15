import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/response/law_news_model_response.dart';

part 'law_news_cubit.freezed.dart';
part 'law_news_state.dart';

class LawNewsCubit extends Cubit<LawNewsState> {
  LawNewsCubit() : super(const LawNewsState());
  Future<void> getLawNews() async {
    emit(state.copyWith(isLoading: true));
    final dio = Dio();
    const url = 'https://api-berita-indonesia.vercel.app/antara/hukum/';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        print('Response data: ${response.data}');
        final lawNews = LawNews.fromJson(response.data);
        emit(state.copyWith(isLoading: false, lawNews: lawNews));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
