import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieflix/models/movie.dart';

class ListMoviesNotifier extends StateNotifier<List<Movie>> {
  ListMoviesNotifier() : super([]);

  bool onPressMovieListStatus(Movie movie) {
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


//final movieIsFavourite = state.contains(movie);: This line checks if the movie is already in the list of favorites by using the contains method of the state list.

// state = state.where((m) => m.id != movie.id).toList();: 
// If the movie is already in the list, this line removes it by
//  creating a new list without the specified movie.

// state = [...state, movie];: If the movie is not in the list, this line adds it to the list by creating a new list with the existing state elements along with the new movie.