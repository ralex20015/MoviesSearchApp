import 'package:flutter_riverpod/legacy.dart';
import 'package:movie_search_app/domain/usecases/get_popular_movies.dart';
import 'package:movie_search_app/presentation/%20movies/%20notifiers/movies_state.dart';

class MoviesNotifier extends StateNotifier<MoviesState> {
  final GetPopularMoviesUseCase _getPopularMoviesUseCase;
  MoviesNotifier(this._getPopularMoviesUseCase) : super(const MoviesState()) {
    fetchPopularMovies();
  }

  Future<void> fetchPopularMovies() async {
    if (state.isLoading || state.movies.isNotEmpty) return;

    state = state.copyWith(isLoading: true);

    try {
      final movies = await _getPopularMoviesUseCase();
      state = state.copyWith(isLoading: false, movies: movies);
    } catch (e) {
      state = state.copyWith(isLoading: false, errorMessage: e.toString());
    }
  }

  void onMovieClicked() {
    //TODO: Implement this.
  }

  Future<void> onAddToFavorites(int movieId) async {
    final currentMovies = state.movies;

    final updatedMovies = currentMovies.map((movie) {
      if (movie.id == movieId) {
        var isFavorite = movie.isFavorite;
        return movie.copyWith(isFavorite: !isFavorite);
      } else {
        return movie;
      }
    }).toList();

    state = state.copyWith(movies: updatedMovies);
  }
}
