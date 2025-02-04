import 'package:flutter/material.dart';
import 'package:roll_dice_teach/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 0, 81, 255), Color.fromARGB(255, 0, 230, 238)),
      ),
    ),
  );
}
