import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movies_api/models/movie.dart';
import 'package:movies_api/services/movies_service.dart';
import 'package:movies_api/widgets/movies_list.dart';

class MoviesBuilder extends StatefulWidget {
  @override
  State<MoviesBuilder> createState() => _MoviesBuilderState();
}

class _MoviesBuilderState extends State<MoviesBuilder> {
  var movies;
  @override
  void initState() {
    super.initState();
    movies = MoviesService(Dio()).getMovies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Movie>>(
        future: movies,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return MoviesList(
              movies: snapshot.data!,
            );
          } else
            return SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
        });
  }
}
