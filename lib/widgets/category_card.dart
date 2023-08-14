import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(category.imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          category.categoryName,
          style: const TextStyle(
            fontFamily: "Gilroy-Bold",
            fontWeight: FontWeight.w800,
            color: Color(0xffABEBD2),
            letterSpacing: 1,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
