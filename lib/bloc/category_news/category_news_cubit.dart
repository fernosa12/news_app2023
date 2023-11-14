import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_news_cubit.freezed.dart';
part 'category_news_state.dart';

class CategoryNewsCubit extends Cubit<CategoryNewsState> {
  CategoryNewsCubit() : super(const CategoryNewsState());
}
