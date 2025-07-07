
import 'package:equatable/equatable.dart';
import 'package:movie_search_app/domain/entities/Movie.dart';

class MoviesState  extends Equatable{
  final bool isLoading;
  final List<Movie> movies;
  final String? errorMessage;

  const MoviesState({
    this.isLoading = false,
    this.movies = const [],
    this.errorMessage,
  });

  MoviesState copyWith({
    bool? isLoading,
    List<Movie>? movies,
    String? errorMessage,
  }) {
    return MoviesState(
      isLoading: isLoading ?? this.isLoading,
      movies: movies ?? this.movies,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
  @override
  List<Object?> get props => [isLoading, movies, errorMessage];
}