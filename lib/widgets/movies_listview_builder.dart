import 'package:flutter/material.dart';

import 'movie_widget.dart';

class MoviesBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: ListView(
        children: [
          MovieWidget(),
          MovieWidget(),
          MovieWidget(),
          MovieWidget(),
          MovieWidget(),
          MovieWidget(),
        ],
      ),
    );
  }
}
