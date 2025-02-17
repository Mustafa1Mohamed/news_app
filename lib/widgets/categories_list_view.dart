import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/card_category.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(name: 'Business News', image: 'assets/business.avif'),
    CategoryModel(
        name: 'Entertainment News', image: 'assets/entertaiment.avif'),
    CategoryModel(name: 'Health News', image: 'assets/health.avif'),
    CategoryModel(name: 'Science News', image: 'assets/science.avif'),
    CategoryModel(name: 'Sports News', image: 'assets/sports.avif'),
    CategoryModel(name: 'Technology News', image: 'assets/technology.jpeg'),
    CategoryModel(name: 'general News', image: 'assets/general.avif'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: CategoryCard(
              category: categories[index],
            ),
          );
        },
      ),
    );
  }
}
