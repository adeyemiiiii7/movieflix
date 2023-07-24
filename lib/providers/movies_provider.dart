import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movieflix/data/dummy_data.dart';

final moviesProvider = Provider((ref) {
  return dummyData;
});
