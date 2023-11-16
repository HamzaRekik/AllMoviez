import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_api/cubits/get_image_cubit/get_image_cubit.dart';
import 'package:movies_api/views/home_view.dart';

void main() {
  runApp(MovieApi());
}

class MovieApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetImagesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
