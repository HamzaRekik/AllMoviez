import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui' as ui;

import 'package:movies_api/cubits/get_image_cubit/get_image_cubit.dart';

class BluredImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var image = BlocProvider.of<GetImagesCubit>(context).image;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://image.tmdb.org/t/p/w500" + image),
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
