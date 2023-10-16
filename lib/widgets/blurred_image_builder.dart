import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BluredImage extends StatelessWidget {
  BluredImage({required this.imageURL});
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageURL),
          fit: BoxFit.cover,
        ),
      ),
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.1)),
        ),
      ),
    );
  }
}
