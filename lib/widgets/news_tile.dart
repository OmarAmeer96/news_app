import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.article,
  });

  final ArticleModel article;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(article.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          article.title,
          style: const TextStyle(
            color: Color(0xffABEBD2),
            fontFamily: "Gilroy-Bold",
            fontSize: 16,
          ),
        ),
        Text(
          article.subTitle,
          style: const TextStyle(
            color: Color(0xff9DCBBA),
            fontFamily: "Gilroy-Medium",
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
