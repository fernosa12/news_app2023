// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/models/response/response_news_model.dart';

part 'news_home_page_cubit.freezed.dart';
part 'news_home_page_state.dart';

class NewsHomePageCubit extends Cubit<NewsHomePageState> {
  final NewsHomePage newsHomePage;
  NewsHomePageCubit(
    this.newsHomePage,
  ) : super(const NewsHomePageState());
}
