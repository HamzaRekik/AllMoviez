import 'dart:ui';
import 'package:flutter/material.dart';

class BuildBlur extends StatelessWidget {
  BuildBlur({required this.widget});
  final Widget widget;
  final double sigmaX = 10;
  final double sigmaY = 10;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Container(
            height: 80,
            width: 340,
            color: Colors.black.withOpacity(0.6),
            child: widget),
      ),
    );
  }
}
