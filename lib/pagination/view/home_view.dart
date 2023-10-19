import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_home_page/news_home_page_cubit.dart'; // pastikan import yang benar

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Memanggil getNews ketika widget ini dibuat
    context.read<NewsHomePageCubit>().getNews();

    return BlocBuilder<NewsHomePageCubit, NewsHomePageState>(
      builder: (context, state) {
        // Cek jika dalam keadaan loading
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.errorMessage != null) {
          // Ada error, tampilkan pesan error
          return Center(child: Text(state.errorMessage!));
        } else if (state.newsHomePage != null) {
          // Data berhasil dimuat, tampilkan data
          final articles = state.newsHomePage!.articles;
          return ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return ListTile(
                  leading: article.urlToImage != null
                      ? Image.network(article.urlToImage)
                      : null,
                  title: Text(article.title),
                  subtitle: Text(article.description),
                );
              });
        } else {
          // State yang tidak dikenal, bisa menambahkan penanganan lain jika dibutuhkan
          return const Center(child: Text("Unknown state"));
        }
      },
    );
  }
}
