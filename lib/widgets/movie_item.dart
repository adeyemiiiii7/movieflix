import 'package:flutter/material.dart';
import 'package:movieflix/models/movie.dart';

class MovieItem extends StatelessWidget {
  const MovieItem(
      {super.key, required this.movie, required this.onselectMovie});

  final Movie movie;
  final void Function(Movie movie) onselectMovie;

  String get GenreText {
    return movie.genre.name[0].toUpperCase() + movie.genre.name.substring(1);
  }

  String get Restriction {
    return movie.restriction.name[0].toUpperCase() +
        movie.restriction.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        clipBehavior: Clip.hardEdge,
        elevation: 1.5,
        child: InkWell(
            onTap: () {
              // onselectMovie(Movie);
            },
            child: Stack()));
  }
}
