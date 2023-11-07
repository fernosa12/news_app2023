import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Buat sebuah model (atau bisa juga menggunakan Map atau dynamic jika lebih disukai)
class CarouselItem {
  final String? thumbnail;
  final String? title;

  CarouselItem({this.thumbnail, this.title});
}

// Reusable Carousel Widget
class CustomCarouselSlider extends StatelessWidget {
  final List<CarouselItem> items;
  final Widget Function(BuildContext, CarouselItem)? itemBuilder;

  CustomCarouselSlider({
    required this.items,
    this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        final item = items[itemIndex];

        // Use the itemBuilder if provided, otherwise use a default
        return itemBuilder != null
            ? itemBuilder!(context, item)
            : DefaultCarouselItem(item: item);
      },
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        viewportFraction: 0.8,
      ),
    );
  }
}

// Default Item Builder if none provided
class DefaultCarouselItem extends StatelessWidget {
  final CarouselItem item;

  DefaultCarouselItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          item.thumbnail != null
              ? Image.network(item.thumbnail!,
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
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                item.title ?? 'No title',
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
  }
}

// Contoh penggunaan CustomCarouselSlider





