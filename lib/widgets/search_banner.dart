import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_api/cubits/get_movies_cubit/get_movies_cubit.dart';
import 'package:movies_api/widgets/blurred_widgets/build_widget_blur.dart';

class SearchBanner extends StatelessWidget {
  const SearchBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BuildBlur(
      widget: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 25,
              color: Colors.white.withOpacity(0.4),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 270,
              child: TextField(
                style: TextStyle(color: Colors.white),
                onSubmitted: (value) {
                  BlocProvider.of<GetMoviesCubit>(context)
                      .searchMovies(query: value);
                },
                decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    hintText: "Search...",
                    hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.4), fontSize: 18)),
                showCursor: false,
              ),
            )
          ],
        ),
      ),
    );
  }
}
