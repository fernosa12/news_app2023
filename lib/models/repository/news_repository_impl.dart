import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:news_app/models/response/response_news_category.dart';

class NewsCategoryRepositoryImpl {
  final dio = Dio();
  Future<Either<String, List<String>>> getCategories() async {
    try {
      final response =
          await dio.get('https://api-berita-indonesia.vercel.app/');
      return Right(List<String>.from(
          (response.data['endpoints'][0]['paths'] as List)
              .map((e) => e['name'])
              .toList()));
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, List<NewsCategoryModelResponse>>> getNews(
      String category) async {
    try {
      final response = await dio
          .get('https://api-berita-indonesia.vercel.app/antara/$category/');
      return Right((response.data['data']['posts'] as List)
          .map((e) => NewsCategoryModelResponse.fromJson(e))
          .toList());
    } catch (e) {
      return Left(e.toString());
    }
  }
}
