import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/news_home_page/news_home_page_cubit.dart';
import 'package:news_app/models/response/response_news_model.dart'; // Ganti dengan path yang benar ke model Anda

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsHomePageCubit, NewsHomePageState>(
      listener: (context, state) {
        // Handle potential states, like error showing, etc.
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.errorMessage != null) {
          return Center(child: Text(state.errorMessage!));
        } else if (state.newsHomePage != null) {
          return ListView.builder(
            itemCount: state.newsHomePage?.articles?.length ?? 0,
            itemBuilder: (context, index) {
              final Article? article = state.newsHomePage?.articles?[index];
              return ListTile(
                title: Text(article?.title ?? 'Default Title'),
                subtitle: Text(article?.description ?? "Default Description"),
                leading: article?.urlToImage == null
                    ? null
                    : Image.network(article?.urlToImage ?? ""),
              );
            },
          );
        }
        return const SizedBox.shrink(); // For other unknown states
      },
    );
  }
}
