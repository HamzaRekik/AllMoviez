import 'package:flutter/material.dart';
import 'package:movies_api/views/home_view.dart';

void main() {
  runApp(MovieApi());
}

class MovieApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
