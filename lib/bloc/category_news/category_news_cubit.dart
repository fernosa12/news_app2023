// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/bloc/economy_news/economy_news_cubit.dart';
import 'package:news_app/bloc/law_news/law_news_cubit.dart';
import 'package:news_app/bloc/politik_news/politik_news_cubit.dart';
import 'package:news_app/bloc/sport_news/sport_news_cubit.dart';
import 'package:news_app/bloc/tech_news/tech_news_cubit.dart';
import 'package:news_app/models/base_post.dart';
import 'package:news_app/models/response/economy_news_model_response.dart';
import 'package:news_app/models/response/law_news_model_response.dart';
import 'package:news_app/models/response/politik_news_model_response.dart';
import 'package:news_app/models/response/sport_news_model_response.dart';
import 'package:news_app/models/response/tech_news_model_response.dart';

part 'category_news_cubit.freezed.dart';
part 'category_news_state.dart';

class CategoryNewsCubit extends Cubit<CategoryNewsState> {
  void getNewsForCategory(String category) async {
    emit(state.copyWith(isLoading: true));

    // Membuat map dari kategori ke fungsi yang sesuai.
    var categoryFunctions = {
      'Sports': sportNewsCubit.getSportNews,
      'Economy': economyNewsCubit.getEconomyNews,
      'Tech': techNewsCubit.getTechNews,
      'Law': lawNewsCubit.getLawNews,
      'Politik': politikNewsCubit.getPolitikNews,
    };

    try {
      // Menjalankan fungsi yang sesuai dengan kategori yang diberikan.
      var getNewsFunction = categoryFunctions[category];
      if (getNewsFunction != null) {
        await getNewsFunction();
        emit(state.copyWith(isLoading: false));
      } else {
        // Jika kategori tidak ditemukan, lemparkan sebuah exception.
        throw Exception('Category not recognized');
      }
    } catch (e) {
      // Emit an error state
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  void getCombinedPosts() {
    List<BasePost> combinedPosts = [];
    final politikPosts =
        state.politikNews?.data?.posts?.map((e) => e).toList() ?? [];
    final sportPosts =
        state.sportNews?.data?.posts?.map((e) => e).toList() ?? [];
    final lawPosts = state.lawNews?.data?.posts?.map((e) => e).toList() ?? [];
    final techPosts = state.techNews?.data?.posts?.map((e) => e).toList() ?? [];
    final economyPosts =
        state.economyNews?.data?.posts?.map((e) => e).toList() ?? [];
    combinedPosts.addAll(techPosts);
    combinedPosts.addAll(lawPosts);
    combinedPosts.addAll(politikPosts);
    combinedPosts.addAll(sportPosts);
    combinedPosts.addAll(economyPosts);
    // ... tambahkan yang lainnya

    emit(state.copyWith(combinedPosts: combinedPosts));
  }

  final PolitikNewsCubit politikNewsCubit;
  final LawNewsCubit lawNewsCubit;
  final EconomyNewsCubit economyNewsCubit;
  final TechNewsCubit techNewsCubit;
  final SportNewsCubit sportNewsCubit;
  CategoryNewsCubit(
    this.politikNewsCubit,
    this.lawNewsCubit,
    this.economyNewsCubit,
    this.techNewsCubit,
    this.sportNewsCubit,
  ) : super(const CategoryNewsState()) {
    politikNewsCubit.stream.listen((politikState) {
      if (politikState.politikNews != null) {
        emit(state.copyWith(
            politikNews: politikState.politikNews, isLoading: false));
        getCombinedPosts();
      }
    });

    lawNewsCubit.stream.listen((lawState) {
      if (lawState.lawNews != null) {
        emit(state.copyWith(lawNews: lawState.lawNews, isLoading: false));
        getCombinedPosts();
      }
    });
    sportNewsCubit.stream.listen((sportState) {
      if (sportState.sportNews != null) {
        emit(state.copyWith(sportNews: sportState.sportNews, isLoading: false));
        getCombinedPosts();
      }
    });
    techNewsCubit.stream.listen((techState) {
      if (techState.techNews != null) {
        emit(state.copyWith(techNews: techState.techNews, isLoading: false));
        getCombinedPosts();
      }
    });
    economyNewsCubit.stream.listen((economyState) {
      if (economyState.economyNews != null) {
        emit(state.copyWith(
            economyNews: economyState.economyNews, isLoading: false));
        getCombinedPosts();
      }
    });
  }
}
