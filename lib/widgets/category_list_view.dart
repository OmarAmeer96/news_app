import 'package:flutter/material.dart';
import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(
      imagePath: "assets/images/business2.jpg",
      categoryName: "Business",
    ),
    CategoryModel(
      imagePath: "assets/images/business.avif",
      categoryName: "Creativity",
    ),
    CategoryModel(
      imagePath: "assets/images/entertaiment.avif",
      categoryName: "Entertainment",
    ),
    CategoryModel(
      imagePath: "assets/images/general.avif",
      categoryName: "General",
    ),
    CategoryModel(
      imagePath: "assets/images/health.avif",
      categoryName: "Health",
    ),
    CategoryModel(
      imagePath: "assets/images/science.avif",
      categoryName: "Science",
    ),
    CategoryModel(
      imagePath: "assets/images/technology.jpeg",
      categoryName: "Technology",
    ),
    CategoryModel(
      imagePath: "assets/images/sports.avif",
      categoryName: "Sports",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 14),
            child: CategoryCard(category: categories[index]),
          );
        },
      ),
    );
  }
}
