import 'package:flutter/material.dart';

class Filter {
  final String id;
  final String name;
  final Color colour;
  final int value;
  Filter({
    required this.id,
    required this.name,
    required this.colour,
    required this.value,
  });

  int getValueFromColour(Color colour) {
    return colour.value;
  }

  Color getColourFromValue(int value) {
    return Color(value).withOpacity(1);
  }
}
