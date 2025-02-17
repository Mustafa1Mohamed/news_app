import 'package:flutter/material.dart';
import 'package:news_app/widgets/card_category.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: const CardCategory(),
    );
  }
}
