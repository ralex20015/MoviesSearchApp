import 'package:movie_search_app/domain/entities/Movie.dart';
import 'package:movie_search_app/domain/repositories/MoviesRepository.dart';

class MoviesRepositoryimpl implements MoviesRepository {
  @override
  Future<List<Movie>> getPopularMovies() {
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> searchMovie(String query) {
    // TODO: implement searchMovie
    throw UnimplementedError();
  }
}