import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class LetterIcon extends StatelessWidget {
  final String letters;

  const LetterIcon({super.key, required this.letters});

  String firstLetter() {
    return letters.substring(0, 1);
  }

  Color backgroundColor() {
    final fl = firstLetter();
    final bytes = utf8.encode(fl);
    final digest = md5.convert(bytes);
    final hex = digest.toString();
    final r = int.parse(hex.substring(0, 2), radix: 16);
    final g = int.parse(hex.substring(2, 4), radix: 16);
    final b = int.parse(hex.substring(4, 6), radix: 16);
    return Color.fromRGBO(r, g, b, 1.0);
  }

  Color textColor(Color bgColor) {
    final luminance =
        (bgColor.red * 0.299 + bgColor.green * 0.587 + bgColor.blue * 0.114) /
            255;
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    final bgColor = backgroundColor();
    final tColor = textColor(bgColor);

    return Container(
        decoration: BoxDecoration(color: bgColor, shape: BoxShape.rectangle),
        padding: const EdgeInsets.all(12),
        child: Text(firstLetter(), style: TextStyle(color: tColor)));
  }
}
