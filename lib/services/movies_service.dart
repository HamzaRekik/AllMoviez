import 'package:dio/dio.dart';
import 'package:movies_api/models/movie.dart';

class MoviesService {
  Dio dio;
  String url = "https://api.themoviedb.org/3";
  String bearerToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2N2EyZDhmODE3M2RjNGI3OTVkZTVkZmUyNTQ3ZDcwYyIsInN1YiI6IjY0MGM3OTRjMWFjMjkyMDBiOGNhNjFkNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.hKk9Ry0syxZKfzUmgALBmcJzZiffj2gC9p6bdiaVtyg";

  MoviesService(this.dio);

  Future<List<Movie>> getMovies({String? title}) async {
    try {
      List<Movie> movies = [];
      Response response;
      Options options =
          Options(headers: {'Authorization': 'Bearer $bearerToken'});

      if (title == null) {
        response = await dio.get("$url/trending/all/day?language=en-US",
            options: options);
      } else {
        response = await dio.get(
            "$url/search/movie?language=en-US&query=$title&adult=false",
            options: options);
      }

      for (var movie in response.data['results']) {
        if (movies.length < 15 && movie["poster_path"] != null) {
          Movie m = Movie.fromJson(movie);
          movies.add(m);
        }
      }
      return movies;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
