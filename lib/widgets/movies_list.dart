import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movies_api/models/movie.dart';
import 'package:movies_api/services/movies_service.dart';
import 'package:movies_api/widgets/movie_widget.dart';

class MoviesList extends StatelessWidget {
  MoviesList({required this.movies});
  List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: movies.length,
          (context, index) {
        return MovieWidget(
          movie: movies[index],
        );
      }),
    );
  }
}
