import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_search_app/data/providers.dart';
import 'package:movie_search_app/domain/usecases/get_popular_movies.dart';

final getPopularMoviesUseCaseProvider = Provider<GetPopularMoviesUseCase>((ref) {
  // Depende del movieRepositoryProvider de la capa de datos
  var repository = ref.watch(movieRepositoryProvider);
  return GetPopularMoviesUseCase(repository: repository);
});