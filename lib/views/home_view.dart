import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_api/cubits/get_image_cubit/get_image_cubit.dart';
import 'package:movies_api/cubits/get_image_cubit/get_image_states.dart';
import 'package:movies_api/widgets/home_builder.dart';
import '../widgets/blurred_image_builder.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          BlocBuilder<GetImagesCubit, ImageStates>(builder: (context, state) {
            if (state is SelectedImage) {
              return BluredImage();
            } else
              return Container();
          }),
          HomeView()
        ],
      ),
    );
  }
}
