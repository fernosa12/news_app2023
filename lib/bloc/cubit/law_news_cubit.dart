import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'law_news_state.dart';
part 'law_news_cubit.freezed.dart';

class LawNewsCubit extends Cubit<LawNewsState> {
  LawNewsCubit() : super(LawNewsState.initial());
}
