import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tile.dart';
import '../models/article_model.dart';

class ArticlesListView extends StatelessWidget {
  const ArticlesListView({
    super.key,
  });

  final List<ArticleModel> articles = const [
    ArticleModel(
      // ahramat
      image:
          "https://images.unsplash.com/photo-1539768942893-daf53e448371?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80",
      title:
          "Unveiling Egypt's Enigmatic Past: Exploring the Mysteries of the Pyramids",
      subTitle:
          "Delve into the ancient allure of Egypt as we unravel the secrets hidden within the timeless pyramids.",
    ),
    ArticleModel(
      // mortada
      image: "https://egyptianstreets.com/wp-content/uploads/2018/01/123.jpg",
      title:
          "Mortada Mansour: The Visionary Catalyst Behind Zamalek's Success as CIO",
      subTitle:
          "Discover the strategic brilliance of Mortada Mansour, driving Zamalek's triumphs with technological innovation and leadership.",
    ),
    ArticleModel(
      // tanta
      image:
          "https://amayei.nyc3.digitaloceanspaces.com/2022/09/inbound2321900547402802099.jpg",
      title:
          "Tanta: Where History and Modernity Converge in the Heart of Egypt",
      subTitle:
          "Experience the vibrant blend of tradition and progress in Tanta, a city that echoes Egypt's captivating narrative.",
    ),
    ArticleModel(
      // mall of tanta
      image: "https://www.egypttoday.com/siteimages/Larg/63794.jpg",
      title:
          "A Retail Haven in Tanta: Exploring the Allure of the Magnificent Mall",
      subTitle:
          "Indulge in the ultimate shopping and leisure experience at the Mall of Tanta, a true reflection of Egyptian aspirations.",
    ),
    ArticleModel(
      // sisi
      image:
          "https://media.cnn.com/api/v1/images/stellar/prod/180819032827-el-sisi-1.jpg?q=w_4264,h_2856,x_0,y_0,c_fill",
      title:
          "El-Sisi's Transformative Leadership: Charting Egypt's Path to Prosperity",
      subTitle:
          "Uncover the dynamic initiatives and policies spearheaded by President El-Sisi, driving Egypt towards a brighter future.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: ListView.builder(
          // Very bad for the Performance (shrinkWrap).
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: articles.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: NewsTile(article: articles[index]),
            );
          },
        ),
      ),
    );
  }
}
