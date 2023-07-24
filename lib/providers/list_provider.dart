import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieflix/models/movie.dart';

class ListMoviesNotifier extends StateNotifier<List<Movie>> {
  ListMoviesNotifier() : super([]);

  bool _onPressMovieListStatus(Movie movie) {
    final movieIsFavourite = state.contains(movie);

    if (movieIsFavourite) {
      state = state.where((m) => m.id != movie.id).toList();
      return false;
    } else {
      state = [...state, movie];
      return true;
    }
  }
}

final ListMoviesProvider =
    StateNotifierProvider<ListMoviesNotifier, List<Movie>>((ref) {
  return ListMoviesNotifier();
});
