import 'package:moviapp/domain/entities/movie_entities.dart';

class MovieModel extends MovieEntity {
  final String? overview;
  final String? releaseDate;
  final bool? adult;
  final String? backdropPath;
  final int? id;
  final List<int>? genreIds;
  final int? voteCount;
  final String? originalLanguage;
  final String? originalTitle;
  final String? posterPath;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final double? popularity;
  final String? mediaType;

  MovieModel(
      {this.overview,
      this.releaseDate,
      this.adult,
      this.backdropPath,
      this.id,
      this.genreIds,
      this.voteCount,
      this.originalLanguage,
      this.originalTitle,
      this.posterPath,
      this.title,
      this.video,
      this.voteAverage,
      this.popularity,
      this.mediaType})
      : super(
          id: id,
          title: title,
          backdropPath: backdropPath,
          poaterPath: posterPath,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          overview: overview,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      overview: json['overview'],
      releaseDate: json['release_date'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      id: json['id'],
      genreIds: json['genre_ids'].cast<int>(),
      voteCount: json['vote_count'],
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average']?.toDouble,
      popularity: json['popularity']?.toDouble,
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['id'] = this.id;
    data['genre_ids'] = this.genreIds;
    data['vote_count'] = this.voteCount;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['title'] = this.title;
    data['video'] = this.video;
    data['vote_average'] = this.voteAverage;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
