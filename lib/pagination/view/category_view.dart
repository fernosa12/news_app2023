import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:news_app/bloc/news_category/news_category_cubit.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    super.initState();
    context.read<NewsCategoryCubit>().fetchCategories();
  }

  String? selectedCategory;
  Color colorsRed = const Color(0xfffeb5757);
  Color colorsGrey = const Color(0xfffe0e0e0);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCategoryCubit, NewsCategoryState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.errorMessage != null) {
          return Center(child: Text('Error: ${state.errorMessage}'));
        }

        if (state.categories == null || state.categories!.isEmpty) {
          return const Center(child: Text('No categories found'));
        }

        // Categories are displayed horizontally
        Widget categoriesList = SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List<Widget>.generate(state.categories!.length, (index) {
              final category = state.categories![index];
              return Padding(
                padding: const EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      selectedCategory = category;
                    });
                    context.read<NewsCategoryCubit>().fetchNewsByIndex(index);
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          selectedCategory == category
                              ? colorsRed
                              : colorsGrey)),
                  child: Text(
                    category,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              );
            }).toList(),
          ),
        );

        Widget newsList = state.newsList == null || state.newsList!.isEmpty
            ? const Center(
                child: Text(
                'No news found',
                style: TextStyle(fontSize: 24),
              ))
            : Expanded(
                child: ListView.builder(
                  itemCount: state.newsList!.length,
                  itemBuilder: (context, index) {
                    final newsItem = state.newsList![index];

                    return ListTile(
                      onTap: () {
                        context.push(Uri(
                                path: '/browse',
                                queryParameters: {'uri': newsItem.link})
                            .toString());
                      },
                      subtitle: Text(newsItem.description),
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.date_range_rounded),
                              Text(
                                DateFormat('HH:mm EEE, dd MM yyyy')
                                    .format(newsItem.pubDate),
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            newsItem.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      leading: newsItem.thumbnail != null
                          ? Image.network(newsItem.thumbnail, fit: BoxFit.cover)
                          : null,

                      // You can add more properties as needed
                    );
                  },
                ),
              );
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xfffeb5757),
            centerTitle: true,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/frame_38.png", // Ganti dengan path gambar Anda
                  width: 80, // Sesuaikan lebar gambar
                  height: 72, // Sesuaikan tinggi gambar
                ),
                const SizedBox(width: 8), // Beri jarak antara gambar dan judul
              ],
            ),
          ),
          body: Center(
            child: Column(
              children: [
                categoriesList,
                newsList,
              ],
            ),
          ),
        );
      },
    );
  }
}
