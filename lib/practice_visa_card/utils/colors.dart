import 'package:flutter/material.dart';

class AppColors {

  static Color bgColor = Colors.amber.shade200;

  static List<BoxShadow> shadows = [

    BoxShadow(
      color: Colors.white.withOpacity(0.5),
      offset: const Offset(4.0, 4.0),
      blurRadius: 15,
      spreadRadius: 1.0,
    ),

    BoxShadow(
      color: Colors.grey.withOpacity(0.5),
      offset: const Offset(4.0, 4.0),
      blurRadius: 15,
      spreadRadius: 1.0,
    ),
  ];
}