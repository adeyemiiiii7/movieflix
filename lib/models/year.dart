import 'package:flutter/material.dart';

class Year {
  const Year({
    required this.id,
    required this.title,
    this.color = Colors.blue,
  });
  final String id;
  final String title;
  final Color color;
}
