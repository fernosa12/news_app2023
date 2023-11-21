import 'package:dio/dio.dart';
import 'package:news_app/models/response/response_news_homepage_model.dart';

class NewsHomePageRepositoryImpl {
  Future<NewsHomePageResponse> newsHomePage() async {
    final dio = Dio();
    try {
      var response = await dio
          .get('https://api-berita-indonesia.vercel.app/antara/terbaru/');
      print(response.data);
      if (response.statusCode == 200) {
        // Parse the response data into a NewsHomePageResponse object
        return NewsHomePageResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to load news');
      }
    } on DioError catch (e) {
      throw Exception('Dio error: $e');
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
