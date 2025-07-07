import 'package:movie_search_app/domain/entities/Movie.dart';
import 'package:movie_search_app/domain/repositories/MoviesRepository.dart';

class GetPopularMoviesUseCase {
  final MoviesRepository repository;
  GetPopularMoviesUseCase({required this.repository});

  Future<List<Movie>> call() async{
    return await repository.getPopularMovies();
  }
}