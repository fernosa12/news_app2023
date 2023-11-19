import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/category_news/category_news_cubit.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});

  final List<String> categories = [
    'Sports',
    'Politic',
    'Technology',
    'Economy',
    'Law'
  ];

  @override
  Widget build(BuildContext context) {
    // Menggunakan IntrinsicWidth untuk memastikan setiap kapsul memiliki lebar yang sama.
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Icon(
          Icons.trending_up,
          size: 24.0,
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: categories.map((category) {
                    return GestureDetector(
                      onTap: () {
                        print('Category tapped: $category');
                        context
                            .read<CategoryNewsCubit>()
                            .getNewsForCategory(category);
                      },
                      child: IntrinsicWidth(
                        stepWidth:
                            20, // Tentukan lebar minimal untuk kapsul di sini
                        child: Container(
                          alignment: Alignment.center,
                          constraints: const BoxConstraints(
                            minHeight: 10, // Tinggi minimal dari kapsul
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            category,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          Expanded(
            child: BlocBuilder<CategoryNewsCubit, CategoryNewsState>(
              builder: (context, state) {
                ValueKey(state.isLoading);
                if (state.errorMessage?.isNotEmpty == true) {
                  return Center(
                      key: ValueKey('error_${state.errorMessage}'),
                      child: Text('Error: ${state.errorMessage}'));
                }
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.combinedPosts != null &&
                    state.combinedPosts!.isNotEmpty) {
                  // Langsung gunakan state.combinedPosts yang sudah di-update.

                  return ListView.builder(
                    key: ValueKey('posts_${state.combinedPosts!.length}'),
                    itemCount: state.combinedPosts!.length,
                    itemBuilder: (context, index) {
                      final post = state.combinedPosts![index];
                      return ListTile(
                        title: Text(post.title ?? 'No title'),
                        subtitle: Text(post.description ?? 'No description'),
                      );
                    },
                  );
                } else {
                  return const Center(
                      key: ValueKey('no_posts'), child: Text('No news found'));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
