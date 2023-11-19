import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/response/economy_news_model_response.dart';

part 'economy_news_cubit.freezed.dart';
part 'economy_news_state.dart';

class EconomyNewsCubit extends Cubit<EconomyNewsState> {
  EconomyNewsCubit() : super(const EconomyNewsState());
  Future<void> getEconomyNews() async {
    emit(state.copyWith(isLoading: true));
    final dio = Dio();
    const url = 'https://api-berita-indonesia.vercel.app/antara/ekonomi/';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        print('Response data: ${response.data}');
        final economyNews = EconomyNews.fromJson(response.data);
        emit(state.copyWith(isLoading: false, economyNews: economyNews));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
