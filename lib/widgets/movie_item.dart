import 'package:flutter/material.dart';
import 'package:movieflix/models/movie.dart';
import 'package:movieflix/widgets/movie_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

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
          onselectMovie(movie);
        },
        child: Stack(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(movie.imageUrl),
              fit: BoxFit.contain,
              height: 400,
              width: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black54,
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                child: Column(
                  children: [
                    Text(
                      movie.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis, // Very long text
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: MovieItemTrait(
                            icon: Icons.schedule,
                            label: '${movie.duration} min',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: MovieItemTrait(
                            icon: Icons.movie_filter_outlined,
                            label: GenreText,
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Expanded(
                        //     child: MovieItemTrait(
                        //   icon: Icons.security_rounded,
                        //   label: Restriction,
                        // )),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
