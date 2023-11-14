import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});

  final List<String> categories = [
    'Sports',
    'Foods',
    'Technology',
    'Entertainment',
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: categories.map((category) {
                return IntrinsicWidth(
                  stepWidth: 20, // Tentukan lebar minimal untuk kapsul di sini
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
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
