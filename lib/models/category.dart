import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final IconData iconData;
  final Color color;

  const Category({
    required this.id,
    required this.title,
    required this.iconData,
    this.color = Colors.orange,
  });
}
