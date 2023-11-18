import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_api/cubits/get_movies_cubit/get_movies_cubit.dart';
import 'package:movies_api/cubits/get_movies_cubit/get_movies_states.dart';
import 'package:movies_api/widgets/movies_list.dart';

class MoviesBuilder extends StatefulWidget {
  @override
  State<MoviesBuilder> createState() => _MoviesBuilderState();
}

class _MoviesBuilderState extends State<MoviesBuilder> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetMoviesCubit>(context).searchMovies();
    return BlocBuilder<GetMoviesCubit, MoviesStates>(builder: (context, state) {
      if (state is DefaultMovies) {
        return _MoviesList();
      } else if (state is QueryLoadedMovies) {
        return _MoviesList();
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    });
  }
}

class _MoviesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = BlocProvider.of<GetMoviesCubit>(context).movies;
    return MoviesList(
      movies: movies ?? [],
    );
  }
}
