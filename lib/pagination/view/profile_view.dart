// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReadView extends StatelessWidget {
  final String? title;
  final String description;
  const ReadView({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/readPage.png",
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top:
                150, // Atur posisi top, left, dan right untuk menempatkan container
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  if (title != null)
                    Text(
                      title!,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  const SizedBox(height: 16.0),
                  if (description != null)
                    Text(
                      description!,
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
