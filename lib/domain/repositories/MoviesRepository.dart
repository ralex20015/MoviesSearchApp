import 'package:movie_search_app/domain/entities/Movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> getPopularMovies();
  Future<List<Movie>> searchMovie(String query);
}