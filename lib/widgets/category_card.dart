import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage("assets/images/business2.jpg"),
          fit: BoxFit.fill,
        ),
      ),
      child: const Center(
        child: Text(
          "Business",
          style: TextStyle(
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
