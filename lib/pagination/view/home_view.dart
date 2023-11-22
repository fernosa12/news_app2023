import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:news_app/bloc/cubit/news_homepage_cubit.dart';
import 'package:news_app/pagination/view/bookmark_view.dart';
import 'package:news_app/pagination/view/profile_view.dart';

import 'category_view.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  final PageController _pageController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        context.read<NewsHomepageCubit>().fetchNewsHomePage();
        return PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: const [
            HomePage(),
            CategoryView(),
            BookmarkView(),
            ProfileView(),
          ],
        );
      }),
      bottomNavigationBar: BottomNavigationBar(
        type:
            BottomNavigationBarType.fixed, // Fixed type untuk lebih dari 3 item
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Bookmark'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
      ),
      body: BlocBuilder<NewsHomepageCubit, NewsHomepageState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.errorMassege?.isNotEmpty == true) {
            return Center(child: Text('Error: ${state.errorMassege}'));
          } else if (state.newsHomePageResponse != null &&
              state.newsHomePageResponse!.data != null) {
            final posts = state.newsHomePageResponse?.data?.posts ?? [];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Carousel Slider with Stack
                CarouselSlider.builder(
                  itemCount: posts.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    final post = posts[itemIndex];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          post.thumbnail != null
                              ? Image.network(post.thumbnail!,
                                  fit: BoxFit.cover, width: double.infinity)
                              : const Placeholder(),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.black.withOpacity(0.7),
                                    Colors.transparent,
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                ),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text(
                                post.title ?? 'No title',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                  ),
                ),
                // List View Builder for posts
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Recomended for you",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      final post = posts[index];
                      String formattedDate = post.pubDate != null
                          ? DateFormat('EEE, MMM d, yyyy').format(post.pubDate!)
                          : 'Date not available';
                      return ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Teks untuk tanggal
                            Text(
                              formattedDate, // Asumsikan 'post' memiliki property 'date'
                              style: const TextStyle(
                                color:
                                    Colors.grey, // Warna abu-abu untuk tanggal
                                fontSize:
                                    12.0, // Ukuran font yang lebih kecil untuk tanggal
                              ),
                            ),
                            // Teks untuk judul
                            Text(
                              post.title ?? 'No title',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        leading: post.thumbnail != null
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: SizedBox(
                                    width: 87,
                                    height: 56.0,
                                    child: Image.network(post.thumbnail!,
                                        fit: BoxFit.cover)),
                              )
                            : null,
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
