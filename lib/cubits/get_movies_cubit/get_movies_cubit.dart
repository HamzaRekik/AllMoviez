import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_api/cubits/get_movies_cubit/get_movies_states.dart';
import 'package:movies_api/models/movie.dart';
import 'package:movies_api/services/movies_service.dart';

class GetMoviesCubit extends Cubit<MoviesStates> {
  GetMoviesCubit() : super(DefaultMovies());
  List<Movie>? movies;

  defaultMovies() async {
    movies = await MoviesService(Dio()).getMovies();
    emit(DefaultMovies());
  }

  searchMovies({String? query}) async {
    try {
      if (query == '') {
        defaultMovies();
      } else {
        movies = await MoviesService(Dio()).getMovies(title: query);
        emit(QueryLoadedMovies());
      }
    } catch (e) {
      emit(QueryFailureMovies());
    }
  }
}
