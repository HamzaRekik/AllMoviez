import 'package:flutter/material.dart';
import 'package:movies_api/widgets/build_widget_blur.dart';
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
            imageURL: 'assets/messi.jpg',
          ),
          Center(child: BuildBlur(widget: SearchBanner())),
        ],
      ),
    );
  }
}

class SearchBanner extends StatelessWidget {
  const SearchBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Icon(
            Icons.search,
            size: 25,
            color: Colors.white.withOpacity(0.4),
          ),
          SizedBox(
            width: 10,
          ),
          SizedBox(
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  hintText: "Search...",
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.4), fontSize: 18)),
              showCursor: false,
            ),
            width: 170,
          )
        ],
      ),
    );
  }
}
