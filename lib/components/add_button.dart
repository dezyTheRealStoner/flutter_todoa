import 'package:flutter/material.dart';

Widget addButton = Container(
  width: double.infinity,
  height: 90,
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Color(0xFFEB7407),
        Color(0xFFF84007),
      ],
      stops: [0.2, 1],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(15),
      topRight: Radius.circular(15),
    ),
  ),
  child: const Center(
    child: Text(
      'Add items',
      style: TextStyle(
          color: Colors.white, fontSize: 26, fontWeight: FontWeight.w500),
    ),
  ),
);
