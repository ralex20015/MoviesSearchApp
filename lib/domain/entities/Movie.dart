import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String year;
  final String posterUrl;
  final double rating;
  final bool isFavorite;

  const Movie({
    required this.id,
    required this.title,
    required this.year,
    required this.posterUrl,
    required this.rating,
    this.isFavorite = false,
  });

    Movie copyWith({
    int? id,
    String? title,
    String? year,
    String? posterUrl,
    double? rating,
    bool? isFavorite,
  }) {
    return Movie(
      id: id ?? this.id,
      title: title ?? this.title,
      year: year ?? this.year,
      posterUrl: posterUrl ?? this.posterUrl,
      rating: rating ?? this.rating,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [id, title, isFavorite];
}