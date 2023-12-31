import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_tiles_list_view.dart';
import '../widgets/category_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static String id = "HomeView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1f1f1f),
      appBar: _buildAppBar(),
      body: const Padding(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 26,
              ),
            ),
            ArticlesListView(),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "News",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color(0xffABEBD2),
              fontFamily: "Gilroy-Bold",
            ),
          ),
          Text(
            "Cloud",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Gilroy-Bold",
              color: Color(0xffFF8552),
            ),
          ),
        ],
      ),
    );
  }
}
