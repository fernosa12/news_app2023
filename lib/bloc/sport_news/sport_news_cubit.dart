import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/response/sport_news_model_response.dart';

part 'sport_news_cubit.freezed.dart';
part 'sport_news_state.dart';

class SportNewsCubit extends Cubit<SportNewsState> {
  SportNewsCubit() : super(const SportNewsState());
  Future<void> getSportNews() async {
    emit(state.copyWith(isLoading: true));
    final dio = Dio();
    const url = 'https://api-berita-indonesia.vercel.app/antara/olahraga/';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        print('Response data: ${response.data}');
        final sportNews = SportNews.fromJson(response.data);
        emit(state.copyWith(isLoading: false, sportNews: sportNews));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
