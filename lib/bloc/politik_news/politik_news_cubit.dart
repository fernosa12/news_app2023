import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'politik_news_state.dart';
part 'politik_news_cubit.freezed.dart';

class PolitikNewsCubit extends Cubit<PolitikNewsState> {
  PolitikNewsCubit() : super(PolitikNewsState.initial());
}
