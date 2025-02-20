import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class SpecificNews extends StatelessWidget {
  const SpecificNews({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [NewsListViewBuilder(category: categoryModel.name)],
      ),
    );
  }
}
