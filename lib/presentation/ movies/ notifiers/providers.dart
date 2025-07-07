import 'package:flutter_riverpod/legacy.dart';
import 'package:movie_search_app/domain/providers.dart';
import 'package:movie_search_app/presentation/%20movies/%20notifiers/movies_notifier.dart';
import 'package:movie_search_app/presentation/%20movies/%20notifiers/movies_state.dart';

final moviesNotifierProvider = StateNotifierProvider<MoviesNotifier, MoviesState>((ref){
  final getPopularMovies = ref.watch(getPopularMoviesUseCaseProvider);
  return MoviesNotifier(getPopularMovies);
});