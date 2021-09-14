import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class MovieEntity extends Equatable {
  final String? poaterPath;
  final int? id;
  final String? backdropPath;
  final String? title;
  final num? voteAverage;
  final String? releaseDate;
  final String? overview;

  const MovieEntity({
    @required this.poaterPath,
    @required this.id,
    @required this.backdropPath,
    @required this.title,
    @required this.voteAverage,
    @required this.releaseDate,
    this.overview,
  }) : assert(id != null, 'movie id must not be null ');

  @override
  List<Object?> get props => [id, title];

  @override
  bool get stringify => true;
}
