import 'package:flutter/material.dart';

class LetterIcon extends StatelessWidget {
  final String letters;

  const LetterIcon({super.key, required this.letters});

  String firstLetter() {
    return letters.substring(0, 1);
  }

  @override
  Widget build(BuildContext context) {
    const backgroundColor = Colors.orange;
    const textColor = Colors.black;

    return Container(
        decoration: const BoxDecoration(
            color: backgroundColor, shape: BoxShape.rectangle),
        padding: const EdgeInsets.all(12),
        child: Text(firstLetter(), style: const TextStyle(color: textColor)));
  }
}
