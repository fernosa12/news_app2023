// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/bloc/economy_news/economy_news_cubit.dart';
import 'package:news_app/bloc/law_news/law_news_cubit.dart';
import 'package:news_app/bloc/politik_news/politik_news_cubit.dart';
import 'package:news_app/bloc/sport_news/sport_news_cubit.dart';
import 'package:news_app/bloc/tech_news/tech_news_cubit.dart';
import 'package:news_app/models/response/economy_news_model_response.dart';
import 'package:news_app/models/response/law_news_model_response.dart';
import 'package:news_app/models/response/politik_news_model_response.dart';
import 'package:news_app/models/response/sport_news_model_response.dart';
import 'package:news_app/models/response/tech_news_model_response.dart';

part 'category_news_cubit.freezed.dart';
part 'category_news_state.dart';

class CategoryNewsCubit extends Cubit<CategoryNewsState> {
  final PolitikNewsCubit politikNewsCubit;
  final LawNewsCubit lawNewsCubit;
  final EconomyNewsCubit ecpomyNewsCubit;
  final TechNewsCubit techNewsCubit;
  final SportNewsCubit sportNewsCubit;
  CategoryNewsCubit(
    this.politikNewsCubit,
    this.lawNewsCubit,
    this.ecpomyNewsCubit,
    this.techNewsCubit,
    this.sportNewsCubit,
  ) : super(const CategoryNewsState()) {
    politikNewsCubit.stream.listen((politikState) {
      if (politikState.politikNews != null) {
        emit(state.copyWith(politikNews: politikState.politikNews));
      }
    });

    lawNewsCubit.stream.listen((lawState) {
      if (lawState.lawNews != null) {
        emit(state.copyWith(lawNews: lawState.lawNews));
      }
    });
    sportNewsCubit.stream.listen((sportState) {
      if (sportState.sportNews != null) {
        emit(state.copyWith(sportNews: sportState.sportNews));
      }
    });
    techNewsCubit.stream.listen((techState) {
      if (techState.techNews != null) {
        emit(state.copyWith(techNews: techState.techNews));
      }
    });
    ecpomyNewsCubit.stream.listen((economyState) {
      if (economyState.economyNews != null) {
        emit(state.copyWith(economyNews: economyState.economyNews));
      }
    });
  }
}
