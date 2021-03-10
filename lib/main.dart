import 'package:flutter/material.dart';
import 'package:jokenpo_app/components/JokenpoMoves.dart';

void main() {
  runApp(Jokenpo());
}

class Jokenpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JokenpoMoves(),
    );
  }
}