import 'package:movie_search_app/domain/entities/Movie.dart';
import 'package:movie_search_app/domain/repositories/MoviesRepository.dart';

class FakeMoviesrepositoryimpl implements MoviesRepository {
  @override
  Future<List<Movie>> getPopularMovies() async {
    await Future.delayed(const Duration(seconds: 3));
    return getFakeMovies();
  }

  List<Movie> getFakeMovies() {
    return [
      for (var x = 1; x < 5; x++)
        Movie(
          id: x,
          title: "Película Falsa $x",
          year: "2010",
          posterUrl:
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
          rating: 8.5 - x,
          isFavorite: true,
        ),
      for (var x = 5; x < 10; x++)
        Movie(
          id: x,
          title: "Película Falsa $x",
          year: "2011",
          posterUrl:
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
          rating: 7.9,
        ),
      for (var x = 10; x < 20; x++)
        Movie(
          id: x,
          title: "Película Falsa $x",
          year: "2015",
          posterUrl:
              "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
          rating: (x % 2 == 0) ? 9.1 : 7.5,
        ),
    ];
  }

  @override
  Future<List<Movie>> searchMovie(String query) {
    // TODO: implement searchMovie
    throw UnimplementedError();
  }
}
