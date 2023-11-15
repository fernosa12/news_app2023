import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/response/tech_news_model_response.dart';

part 'tech_news_cubit.freezed.dart';
part 'tech_news_state.dart';

class TechNewsCubit extends Cubit<TechNewsState> {
  TechNewsCubit() : super(const TechNewsState());
  Future<void> getPolitikNews() async {
    emit(state.copyWith(isLoading: true));
    final dio = Dio();
    const url = 'https://api-berita-indonesia.vercel.app/antara/tekno/';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        print('Response data: ${response.data}');
        final techNews = TechNews.fromJson(response.data);
        emit(state.copyWith(isLoading: false, techNews: techNews));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
