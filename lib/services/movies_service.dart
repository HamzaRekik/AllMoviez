import 'package:dio/dio.dart';
import 'package:movies_api/models/movie.dart';

class MoviesService {
  Dio dio;
  String url = "https://api.themoviedb.org/3/trending/all/day?language=en-US";
  String bearerToken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2N2EyZDhmODE3M2RjNGI3OTVkZTVkZmUyNTQ3ZDcwYyIsInN1YiI6IjY0MGM3OTRjMWFjMjkyMDBiOGNhNjFkNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.hKk9Ry0syxZKfzUmgALBmcJzZiffj2gC9p6bdiaVtyg";

  MoviesService(this.dio);

  Future<List<Movie>> getMovies() async {
    try {
      List<Movie> movies = [];
      Options options =
          Options(headers: {'Authorization': 'Bearer $bearerToken'});
      Response response = await dio.get(url, options: options);

      for (var movie in response.data['results']) {
        Movie m = Movie.fromJson(movie);
        movies.add(m);
      }
      return movies;
    } catch (e) {
      print(e);
      return [];
    }
  }
}
