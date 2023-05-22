import 'package:flutter/material.dart';
import '../components/category_item.dart';
import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  // const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(13),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 1.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(cat);
        }).toList(),
      ),
    );
  }
}
