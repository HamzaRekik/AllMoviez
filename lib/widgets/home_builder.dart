import 'package:flutter/material.dart';
import 'package:movies_api/widgets/movies_builder.dart';
import 'package:movies_api/widgets/movies_list.dart';
import 'package:movies_api/widgets/search_banner.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(height: 70),
          ),
          SliverToBoxAdapter(
            child: SearchBanner(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 40),
          ),
          MoviesBuilder()
        ],
      ),
    );
  }
}
