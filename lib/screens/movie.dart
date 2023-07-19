import 'package:flutter/material.dart';
import 'package:movieflix/models/movie.dart';
import 'package:movieflix/screens/movie_deals.dart';
import 'package:movieflix/widgets/movie_item.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen(
      {super.key, this.title, required this.movies, required this.onPressList});

  final String? title;
  final List<Movie> movies;
  final void Function(Movie movie) onPressList;
  void selectMovie(BuildContext context, Movie movie) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MovieDetailsScreen(
          onPressList: onPressList,
          movie: movie,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Uh oh ... nothing here!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            'Try selecting a different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
          ),
        ],
      ),
    );
    if (movies.isNotEmpty) {
      content = ListView.builder(
        itemCount: movies.length,
        itemBuilder: (ctx, index) => MovieItem(
          movie: movies[index],
          onselectMovie: (Movie movie) {
            selectMovie(context, movie);
          },
        ),
      );
    }

    if (title == null) {
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content,
    );
  }
}
