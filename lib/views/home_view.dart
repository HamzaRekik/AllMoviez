import 'package:flutter/material.dart';
import 'package:movies_api/widgets/movies_listview_builder.dart';
import '../widgets/blurred_image_builder.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BluredImage(
            imageURL: 'assets/wp.jpg',
          ),
          Center(
            child: Container(
              height: 70,
              color: Colors.amberAccent,
            ),
          )
        ],
      ),
    );
  }
}
